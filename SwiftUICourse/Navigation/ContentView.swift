//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 13/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            ListView()
                .tabItem {
                    Image(systemName: "list.bullet.circle.fill")
                    Text("My Courses")
                }
            
            RemoteDataView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Live Courses")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
