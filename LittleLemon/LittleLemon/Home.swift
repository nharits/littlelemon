//
//  Home.swift
//  LittleLemon
//
//  Created by haritS on 26/1/2567 BE.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView{
            Menu()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
        }
    }
}

#Preview {
    Home()
}
