//
//  ContentView.swift
//  Rock Paper or Scissors
//
//  Created by Joe . on 06/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainGame()
                .tabItem { Label("Game",systemImage: "gamecontroller") }
            
            PastWins()
                .tabItem { Label("Previous Matches", systemImage: "arrow.uturn.backward.circle") }
        }
    }
}

#Preview {
    ContentView()
}
