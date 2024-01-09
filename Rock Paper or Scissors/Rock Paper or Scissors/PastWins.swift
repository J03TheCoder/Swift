//
//  PastWins.swift
//  Rock Paper or Scissors
//
//  Created by Joe . on 06/01/2024.
//

import SwiftUI

struct PastWins: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var games: FetchedResults<Game>
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(games) { game in
                    VStack {
                        Text(game.gameDecision ?? "Unknown")
                            .font(.largeTitle.bold().italic())
                        Text("\(game.oponentMove ?? "Unknown") and \(game.userMove ?? "Unknown")")
                            .font(.headline)
                        Text("Game was held in \(game.gameDate ?? Date.now)")
                            .font(.subheadline)
                    }
                }
                .onDelete(perform: deleteBooks)
            }
            .navigationTitle("Previous Games 👾")
        }
    }
    func deleteBooks(at offsets: IndexSet) {
        for offset in offsets {
            let game = games[offset]
            moc.delete(game)
            
        }
        
        try? moc.save()
    }
}

#Preview {
    PastWins()
}
