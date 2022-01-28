//
//  CardView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 13/12/2021.
//

import SwiftUI

struct CardView: View {
    
    var item: Item = items[0]
    
    var body: some View {
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
        .frame(width: 252, height: 329)
        .background(item.gradient)
        .cornerRadius(30)
        .shadow(radius: 5, x:5, y:5)
        .multilineTextAlignment(.leading)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
