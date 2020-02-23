//
//  CountriesVM.swift
//  Networking-Router
//
//  Created by Dushan Saputhanthri on 23/2/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

import UIKit
import SwiftyJSON

class CountriesVM: NSObject {
    
    var countryList: [Country] = []
    
    //MARK: Load All Countries data
    func loadAllCountriesData(completion: @escaping CompletionHandler) {
        
        CountriesAPI.countriesGet(completion: { (response, error) in
            if error != nil {
                self.hadleErrorResponse(error, completion: { (status, statusCode, message) in
                    completion(status, statusCode, message)
                })
            } else {
                guard let responsePayload = response?.payload else {return}
                self.countryList.append(contentsOf: responsePayload)
                completion(true, 200, response?.message ?? "Data loaded successfully.")
            }
        })
    }
    
    //MARK: Handle Error Response
    func hadleErrorResponse(_ error: Error?, completion: CompletionHandler) {
        
        if let errorResponse = error as? ErrorResponse {
            switch errorResponse {
            case .error(let statusCode, let data, _):
                guard let responseData = data else {return}
                let errorJson = JSON(responseData)
                completion(false, statusCode, errorJson["message"].stringValue)
            }
        } else {
            completion(false, 422, "Error Corrupted")
        }
    }
}
