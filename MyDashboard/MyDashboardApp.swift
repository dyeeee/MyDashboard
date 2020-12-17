//
//  MyDashboardApp.swift
//  MyDashboard
//
//  Created by YES on 2020/12/17.
//

import SwiftUI

@main
struct MyDashboardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
