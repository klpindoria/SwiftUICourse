//
//  ImageView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 19/02/2022.
//

import SwiftUI

struct ImageView: View {
       
    @StateObject var ImageVM = ImageViewModel()
    
    let url: String
        
    var body: some View {
        if let data = ImageVM.data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(8)
                .frame(width: 100, height: 70)
                .background(Color.black)
                .cornerRadius(10)
                .shadow(radius: 8)
        } else {
            Image(systemName: "video")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(width: 100, height: 70)
                .background(Color.gray)
                .cornerRadius(10)
                .shadow(radius: 10)
                .onAppear {
                    ImageVM.getImageData(urlString: url)
                }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: "https://iosacademy.io/assets/images/courses/tiktok.png")
    }
}
