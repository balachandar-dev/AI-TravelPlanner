//
//  OpenAIModels.swift
//  AI-TravelPlanner
//
//  Created by Balachandar on 25/05/26.
//

import Foundation

struct OpenAIRequest: Encodable {
    let model: String
    let messages: [OpenAIMessage]
}

struct OpenAIMessage: Encodable {
    let role: String
    let content: String
}

struct OpenAIResponse: Decodable {
    let choices: [OpenAIChoice]
}

struct OpenAIChoice: Decodable {
    let message: OpenAIChatMessage
}

struct OpenAIChatMessage: Decodable {

    let content: String
}
