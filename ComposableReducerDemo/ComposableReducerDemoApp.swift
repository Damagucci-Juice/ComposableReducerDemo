//
//  ComposableReducerDemoApp.swift
//  ComposableReducerDemo
//
//  Created by NewUser on 9/26/24.
//
import ComposableArchitecture
import SwiftUI

@main
struct ComposableReducerDemoApp: App {
    static let store = Store(initialState: ContactsFeature.State()) {
        ContactsFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            ContactsView(store: ComposableReducerDemoApp.store)
        }
    }
}
