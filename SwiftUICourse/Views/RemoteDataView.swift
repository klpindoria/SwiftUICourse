//
//  RemoteDataView.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 19/02/2022.
//

import SwiftUI

struct RemoteDataView: View {
    
    @StateObject var courseVM = CourseViewModel()
    @StateObject var imageVM = ImageViewModel()
    
    var body: some View {
        NavigationView {
            VStack{                
                List {
                    ForEach(courseVM.courses, id: \.self) { course in
                        HStack {
                            ImageView(url: course.image)
                                .padding(.trailing)
                            Text(course.name)
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .padding()
                }
                .navigationTitle("Courses")
                .onAppear {
                    courseVM.getData()
                }
            }
        }
    }
}

struct RemoteDataView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteDataView()
    }
}
