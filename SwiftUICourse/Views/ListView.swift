//
//  ListView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 14/12/2021.
//

import SwiftUI

struct ListView: View {
    
    @State var show = false
    
    @State private var selectedItem: Item? = nil
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    ListItem(item: item)
                        .onTapGesture {
                            self.selectedItem = item
                        }
                }
            }
            .sheet(item: self.$selectedItem, content: { selectedItem in
                DetailView(item: selectedItem)
            })
            
            .navigationTitle("My Courses")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
