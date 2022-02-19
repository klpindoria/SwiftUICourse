//
//  CourseViewModel.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 19/02/2022.
//

import SwiftUI

struct Course: Hashable, Codable {
    let name: String
    let image: String
}

class CourseViewModel: ObservableObject {
    
    @Published var courses: [Course] = []
    
    func getData() {
        // Setting the API URL
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {
            print("API URL not found")
            return
        }
        
        // Setting the API Connection
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("Error with API Connection Task")
                return
            }
        
        // Decode the data from JSON
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    self?.courses = courses
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}
