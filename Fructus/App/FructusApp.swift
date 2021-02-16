//
//  FructusApp.swift
//  Fructus
//
//  Created by Vandan Patel on 2/13/21.
//

import SwiftUI

public enum FructusConstants {
    static let isOnboarding = "isOnboarding"
}

@main
struct FructusApp: App {
    
    @AppStorage(FructusConstants.isOnboarding) var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                FruitsListView()
            }
        }
    }
}
