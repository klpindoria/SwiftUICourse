//
//  ListItem.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 14/12/2021.
//

import SwiftUI

struct ListItem: View {
    
    var item: Item = items[0]
    
    var body: some View {
            VStack (alignment: .leading, spacing: 8.0) {
                HStack (spacing: 16.0) {
                    Image(systemName: "book.circle.fill")
                        .foregroundColor(Color("Primary-1"))
                        .font(.title)
                    VStack(alignment: .leading, spacing: 6.0) {
                        Text(item.title)
                                .fontWeight(.bold)
                        Text(item.text)
                    }
                }
            }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
