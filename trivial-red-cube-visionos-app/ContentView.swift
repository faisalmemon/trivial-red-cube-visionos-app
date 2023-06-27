//
//  ContentView.swift
//  trivial-red-cube-visionos-app
//
//  Created by Faisal Memon on 27/06/2023.
//

import SwiftUI
import RealityKit
import Trivial

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List {
                Text("Item")
            }
            .navigationTitle("Sidebar")
        } detail: {
            VStack {
                Model3D(named: "Scene", bundle: trivialBundle)
                    .padding(.bottom, 50)

                Text("Hello, world!")
            }
            .navigationTitle("Content")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
