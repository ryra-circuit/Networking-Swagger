//
// ApiError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ApiError: Codable {

    public var message: String?
    public var result: Bool?
    public var payload: AnyCodable?

    public init(message: String?, result: Bool?, payload: AnyCodable?) {
        self.message = message
        self.result = result
        self.payload = payload
    }


}

