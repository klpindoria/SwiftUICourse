//
//  Data.swift
//  SwiftUICourse
//
//  Created by Ketan Pindoria on 14/12/2021.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var time: String
    var gradient: LinearGradient
}

var items = [
    Item(
        title: "SwiftUI for iOS 14",
        text: "A complete course covering SwiftUI for iOS 14",
        image: "Course Image 1",
        time: "20 sections - 3 hours",
        gradient: LinearGradient(gradient: Gradient(colors: [Color("Primary-1"), Color("Secondary-1")]), startPoint: .top, endPoint: .trailing)),
    
    Item(
        title: ".NET Core 6",
        text: "A starter course going over .NET Core 6",
        image: "Course Image 2",
        time: "10 sections - 1 hour",
        gradient: LinearGradient(gradient: Gradient(colors: [Color("Primary"), Color("Secondary")]), startPoint: .top, endPoint: .trailing)),
    
    Item(
        title: "Learn Obj-C",
        text: "A beginners course covering Objective-C",
        image: "Course Image 3",
        time: "12 sections - 1.5 hours",
        gradient: LinearGradient(gradient: Gradient(colors: [Color("Primary"), Color("Secondary-1")]), startPoint: .top, endPoint: .trailing))
]
