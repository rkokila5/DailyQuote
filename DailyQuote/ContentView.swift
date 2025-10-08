//
//  ContentView.swift
//  DailyQuote
//
//  Created by Kokila on 08/10/25.
//

import SwiftUI

struct ContentView: View {
    let quotes = [
        "Believe you can and you’re halfway there.",
        "Every day is a second chance.",
        "The best time to start was yesterday. The next best time is now.",
        "Stay hungry, stay foolish.",
        "You are stronger than you think."
    ]
    
    @State private var currentQuote = "Tap below to get inspired ✨"
    
    var body: some View {
        VStack(spacing: 30) {
            Text(currentQuote)
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("New Quote") {
                currentQuote = quotes.randomElement()!
            }
            .font(.headline)
            .padding()
            .background(Color.blue.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(12)
            .shadow(radius: 5)
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
