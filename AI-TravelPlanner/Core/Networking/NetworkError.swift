//
//  NetworkError.swift
//  AI-TravelPlanner
//
//  Created by Balachandar on 25/05/26.
//

import Foundation

enum NetworkError: LocalizedError {

    case invalidURL
    case invalidResponse
    case serverError
    case emptyResponse

    var errorDescription: String? {

        switch self {

        case .invalidURL:
            return "Invalid URL"

        case .invalidResponse:
            return "Invalid response"

        case .serverError:
            return "Server error occurred"

        case .emptyResponse:
            return "No response received"
        }
    }
}
