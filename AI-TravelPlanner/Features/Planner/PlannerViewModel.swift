//
//  PlannerViewModel.swift
//  AI-TravelPlanner
//
//  Created by Balachandar on 17/05/26.
//

import Foundation
import Observation

@MainActor
@Observable

final class PlannerViewModel {
    
    ///MARK: - Inputs
    var destination: String = ""
    var days: Int = 0
    var budget: String = ""
    var interests: String = ""
    
    //MARK: - UI State
    var generatedPlans: String = ""
    var isLoading: Bool = false
    var errorMessage: String? = nil
    
    // MARK: - Dependencies
    
//    private let tripService: TripGenerationService
    
    // MARK: - Init
    
//    init(tripService: TripGenerationService) {
//        self.tripService = tripService
//    }
    
    //MARK: - Actions
    func generateTrip() async {
        guard validateInputs() else {
            return
        }
        
        isLoading = true
        errorMessage = nil
        generatedPlans = ""
        
        let request = TripRequest(destination: destination, days: days, budget: budget, interests: interests)
        
        // Create API call
        do {
            let response = try await tripService.generateTrip(from: request)
            generatedPlans = response
            isLoading = false
        } catch {
            errorMessage = error.localizedDescription
            isLoading = false
        }
    }
}

extension PlannerViewModel {
    func validateInputs() -> Bool {
        guard !destination.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter destination"
            return false
        }
        guard !budget.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter budget"
            return false
        }
        guard !interests.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter interests"
            return false
        }
        return true
    }
}
