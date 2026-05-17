//
//  LLMProvider.swift
//  AI-TravelPlanner
//
//  Created by Balachandar on 17/05/26.
//

import Foundation

protocol LLMProvider {
    func generate(prompt: String) async throws -> String
}
