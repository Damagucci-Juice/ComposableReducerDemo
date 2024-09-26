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
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            CounterView(store: ComposableReducerDemoApp.store)
        }
    }
}
