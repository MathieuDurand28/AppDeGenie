//
//  ContentView.swift
//  Exoportfolio
//
//  Created by Mathieu Durand on 23/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 0
    var body: some View {
        TabView(selection: $selection, content:   {
            HomeView()
                .tabItem {
                    Label("Accueil", systemImage: "house")
                }
                .tag(0)
            WishesView()
                .tabItem { Label("Réalisations", systemImage: "lamp.desk") }
                .tag(1)
            ContactView()
                .tabItem { Label("Contact", systemImage: "globe") }
                .tag(2)
        })
  
    }
}

#Preview {
    ContentView()
}
