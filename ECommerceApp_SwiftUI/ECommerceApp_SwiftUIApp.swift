//
//  ECommerceApp_SwiftUIApp.swift
//  ECommerceApp_SwiftUI
//
//  Created by Nagaraju on 16/12/23.
//

import SwiftUI

@main
struct ECommerceApp_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
