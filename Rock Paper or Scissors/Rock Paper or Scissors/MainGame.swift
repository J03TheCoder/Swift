//
//  MainGmae.swift
//  Rock Paper or Scissors
//
//  Created by Joe . on 06/01/2024.
//

import SwiftUI

struct MainGame: View {
    @Environment(\.managedObjectContext) var moc
    var rockPaperScissors = ["🪨", "📜", "✂️"]
    @State private var random = Int.random(in: 0...2)
   @State private var usermoves = ["🪨", "📜", "✂️"]
   @State private var pick = "🪨"
    @State private var startGame = false
    @AppStorage("Score") private var score = 0
    @State private var title = "Start A Game !"
    @State private var showingSheet = false
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                VStack {
                    ZStack {
                        Circle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.teal)
                            .shadow(radius: 20)
                        Text(startGame ? rockPaperScissors[random] : "❓")
                            .font(.system(size: 75))
                    }
                    .padding()
                    HStack {
                        Picker("Select A Move", selection: $pick) {
                            ForEach(usermoves, id: \.self) { move in
                                Text(move)
                            }
                        }
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 150, height: 150)
                                    .foregroundColor(.teal)
                                    .shadow(radius: 20)
                                Text(pick)
                                    .font(.system(size: 75))
                            }
                        }
                        
                    }
                    Button("GO") {
                        startGame = true
                            withAnimation(.bouncy(duration: 1)) {
                                random = Int.random(in: 0...2)
                        }
                        startTheGame()
                    }
                    .frame(width: 100, height: 50)
                    .background(.red)
                    .clipShape(.capsule)
                    .font(.headline.bold().italic())
                    .foregroundStyle(.white)
                    .shadow(radius: 25)
                    
                    Text("\(score) 🏆")
                        .frame(width: 100, height: 50)
                        .background(.cyan)
                        .clipShape(.capsule)
                        .shadow(radius: 25)
                }
                .padding()
                .navigationTitle(title)
                .toolbar {
                    Button {
                        showingSheet = true
                    } label: {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
    func startTheGame() {
        if random == 0 && pick == "🪨" {
            print("tie")
            title = "Its A Tie 🙈"
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Tie"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        } else if random == 1 && pick == "🪨" {
            print("lost")
            title = "You Lost 😭"
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Loss"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        } else if random == 2 && pick == "🪨" {
            print("won")
            title = "You won 🤩"
            score += 1
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Won"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        }
        
        if random == 0 && pick == "📜" {
            print("won")
            title = "You won 🤩"
            score += 1
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Won"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        } else if random == 1 && pick == "📜" {
            print("tie")
            title = "Its A Tie 🙈"
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Tie"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        } else if random == 2 && pick == "📜" {
            print("lost")
            title = "You Lost 😭"
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Loss"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        }
        
        if random == 0 && pick == "✂️" {
            print("lost")
            title = "You Lost 😭"
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Loss"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        } else if random == 1 && pick == "✂️" {
            print("won")
            title = "You won 🤩"
            score += 1
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Won"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        } else if random == 2 && pick == "✂️" {
            print("tie")
            title = "Its A Tie 🙈"
            let newGame = Game(context: moc)
            newGame.id = UUID()
            newGame.gameDate = Date.now
            newGame.gameDecision = "Tie"
            newGame.oponentMove = "The Oponent Chose \(rockPaperScissors[random])"
            newGame.userMove = "And You Chose \(pick)"
            try? moc.save()
        }
        
    }
}

#Preview {
    MainGame()
}
