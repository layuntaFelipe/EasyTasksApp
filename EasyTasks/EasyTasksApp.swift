//
//  EasyTasksApp.swift
//  EasyTasks
//
//  Created by Felipe Lobo on 23/05/21.
//

import SwiftUI

@main
struct EasyTasksApp: App {
    let persistenceController = PersistenceController.shared
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
