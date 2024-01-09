//
//  Rock_Paper_or_ScissorsApp.swift
//  Rock Paper or Scissors
//
//  Created by Joe . on 06/01/2024.
//

import SwiftUI

@main
struct Rock_Paper_or_ScissorsApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
