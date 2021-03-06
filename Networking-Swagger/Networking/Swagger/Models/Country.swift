//
//  Country.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import UIKit

public struct Country: Codable {
    
    public var name: String?
    public var capital: String?
    public var states: [State]?

    public init(name: String?, capital: String?, states: [State]?) {
        self.name = name
        self.capital = capital
        self.states = states
    }

    public enum CodingKeys: String, CodingKey {
        case name
        case capital
        case states
    }
}
