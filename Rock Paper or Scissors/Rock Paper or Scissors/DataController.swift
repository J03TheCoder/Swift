//
//  DataController.swift
//  Rock Paper or Scissors
//
//  Created by Joe . on 07/01/2024.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Games")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data Failed to load: \(error.localizedDescription)")
                return
            }
            
        }
    }
}
