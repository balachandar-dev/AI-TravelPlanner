//
//  PromptBuilder.swift
//  AI-TravelPlanner
//
//  Created by Balachandar on 17/05/26.
//

import Foundation

struct PromptBuilder {
    static func buildTripPrompt(from request: TripRequest) -> String {
                """
                Create a \(request.days)-day travel itinerary.
                
                Destination:
                \(request.destination)
                
                Budget:
                \(request.budget)
                
                Interests:
                \(request.interests)
                
                Include:
                - Day-wise itinerary
                - Food recommendations
                - Estimated budget usage
                - Travel tips
                
                Keep the response concise and easy to read.
                """
    }
}
