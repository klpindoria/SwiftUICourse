//
//  HomeView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 13/12/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16.0) {
                        ForEach(items) { item in
                            NavigationLink(destination: DetailView(item: item)) {
                                CardView(item: item)
                            }
                        }
                    }
                    .padding()
                }
                
                Text("Recently Viewed")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.top, .leading])
                    .padding(.bottom, -10.0)
                    
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 16)], spacing: 16) {
                    ForEach(items) { item in
                        NavigationLink(destination: DetailView(item: item)) {
                            SmallCardView(item: item)
                        }
                    }
                }
                .padding()
                
                
            }
            .navigationTitle("Learn to Code")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
