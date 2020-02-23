//
// Paginator.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Paginator: Codable {

    public var currentPage: Double?
    public var firstPage: Double?
    public var lastPage: Double?
    public var perPage: Double?
    public var from: Double?
    public var to: Double?

    public init(currentPage: Double?, firstPage: Double?, lastPage: Double?, perPage: Double?, from: Double?, to: Double?) {
        self.currentPage = currentPage
        self.firstPage = firstPage
        self.lastPage = lastPage
        self.perPage = perPage
        self.from = from
        self.to = to
    }

    public enum CodingKeys: String, CodingKey { 
        case currentPage = "current_page"
        case firstPage = "first_page"
        case lastPage = "last_page"
        case perPage = "per_page"
        case from
        case to
    }


}

