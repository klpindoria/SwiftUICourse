//
//  ListView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 14/12/2021.
//

import SwiftUI

struct ListView: View {
    
    @State var show = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    ListItem(item: item)
                        .sheet(isPresented: $show, content: {
                            Text(item.text)
                        })
                        .onTapGesture {
                            show.toggle()
                        }                }
            }
            .padding(.vertical, 20.0)
            .navigationTitle("My Courses")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
