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
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            AppView(store: ComposableReducerDemoApp.store)
        }
    }
}
