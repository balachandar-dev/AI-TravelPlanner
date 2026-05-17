//
//  TripGenerativeService.swift
//  AI-TravelPlanner
//
//  Created by Balachandar on 17/05/26.
//

import Foundation

final class TripGenerativeService {
    private let provider: LLMProvider
    
    init(provider: LLMProvider) {
        self.provider = provider
    }
    
    func generateTrip(from request: TripRequest) async throws -> String {
        let prompt = PromptBuilder.buildTripPrompt(from: request)
        let resposne = try await provider.generate(prompt: prompt)
        return resposne
    }
}
