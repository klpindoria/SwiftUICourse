//
//  DetailView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 13/12/2021.
//

import SwiftUI

struct DetailView: View {
    
    var item: Item = items[2]
    
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
                Text("SwiftUI is hands-down the best way for designers to take a first step into code")
                    .font(.title2)
                Text("This course")
                    .font(.title3).bold()
                Text("This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply those techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions.")
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
