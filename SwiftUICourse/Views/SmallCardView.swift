//
//  SmallCardView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 14/12/2021.
//

import SwiftUI

struct SmallCardView: View {
    
    var item: Item = items[0]
    
    var body: some View {
            VStack(alignment: .leading, spacing: 8.0) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 70)
                    .frame(maxWidth: .infinity)
                    .shadow(radius: 5)
                
                Text(item.title)
                    .fontWeight(.bold)
                    .font(.headline)
                
                Text(item.time)
                    .font(.subheadline)
                    .opacity(0.7)
            }
            .foregroundColor(Color.white)
            .padding()
            .frame(height: 165)
            .background(item.gradient)
            .cornerRadius(30)
            .shadow(radius: 5, x:5, y:5)
            .multilineTextAlignment(.leading)
        }
}

struct SmallCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCardView()
    }
}
