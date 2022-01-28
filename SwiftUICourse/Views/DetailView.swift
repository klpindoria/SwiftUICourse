//
//  DetailView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 13/12/2021.
//

import SwiftUI

struct DetailView: View {
    
    var item: Item = items[0]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8.0) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 128)
                    .frame(maxWidth: .infinity)
                    .shadow(radius: 5)
                
                
                Text(item.title)
                    .fontWeight(.bold)
                    .font(.title)
                
                Text(item.text)
                    .font(.subheadline)
                    .opacity(0.7)
                Text(item.time)
                    .font(.footnote)
                    .opacity(0.7)
            }
            .foregroundColor(Color.white)
            .padding()
            .background(item.gradient)
            
            VStack(alignment: .leading, spacing: 16.0) {
                Text(item.detailTitle)
                    .font(.title2)
                Text(item.detailSubHeading)
                    .font(.title3).bold()
                Text(item.detailBody)
                    .font(.body)
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
