//
//  ContentView.swift
//  Social Media Clone
//
//  Created by Ananda Afryan on 16/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView() {
                TimelineView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    .tag(0)
                TimelineView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Home")
                    }
                    .tag(0)
                TimelineView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Home")
                    }
                    .tag(0)
            }
        }
    }
}

#Preview {
    ContentView()
}
