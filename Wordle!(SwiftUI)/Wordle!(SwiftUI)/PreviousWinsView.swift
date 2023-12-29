//
//  PreviousWinsView.swift
//  Wordle!(SwiftUI)
//
//  Created by Joe . on 19/12/2023.
//

import SwiftUI

struct PreviousWinsView: View {
    @State private var currentDate = Date.now
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            Form {
                HStack {
                    Image(systemName: "trophy.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75, height: 75)
                    VStack {
                        Text("A Round Won !")
                            .font(.title.bold())
                        Text("You found the word SWIFT and won the rounds scoring ??? points")
                            .font(.headline)
                        Text("Won at \(currentDate.formatted())")
                            .font(.caption)
                    }
                }
            }
            .toolbar {
                Button("Dismiss") {
                    dismiss()
                }
                .foregroundStyle(.white)
            }
            .navigationTitle("Previous Wins")
        }
    }
    
    // func deleteRow(at offset: IndexSet) {
    //      myarray.remove(at: offset)
    //}
}

#Preview {
    PreviousWinsView()
}

