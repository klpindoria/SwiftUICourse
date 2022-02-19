//
//  ImageViewModel.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 19/02/2022.
//

import SwiftUI

class ImageViewModel: ObservableObject {
    
    @Published var data: Data?
  
    func getImageData(urlString: String) {
        //Set Image URL from API
        guard let url = URL(string: urlString) else {
            print("No Image URL")
            return
        }
        //Get Image data from URL
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
            DispatchQueue.main.async {
                self?.data = data
            }
        }
        task.resume()
    }
}
