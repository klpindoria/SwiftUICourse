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
    var detailTitle: String
    var detailSubHeading: String
    var detailBody: String
}

var items = [
    Item(
        title: "SwiftUI for iOS 15",
        text: "A complete course covering SwiftUI for iOS 14",
        image: "Course Image 1",
        time: "20 sections - 3 hours",
        gradient: LinearGradient(gradient: Gradient(colors: [Color("Primary-1"), Color("Secondary-1")]), startPoint: .top, endPoint: .trailing),
        detailTitle: "SwiftUI is hands-down the best way for designers to take a first step into code",
        detailSubHeading: "Swift UI Lesson 1",
        detailBody: "This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply those techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions."
    ),
    
    Item(
        title: ".NET Core 6",
        text: "A starter course going over .NET Core 6",
        image: "Course Image 2",
        time: "10 sections - 1 hour",
        gradient: LinearGradient(gradient: Gradient(colors: [Color("Primary-0"), Color("Secondary-0")]), startPoint: .top, endPoint: .trailing),
        detailTitle: ".NET Core 6 is a great framework for building APIs that connect to different applications and systems",
        detailSubHeading: ".NET Core 6 Lesson 1",
        detailBody: "This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply those techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions."
    ),
    
    Item(
        title: "Learn Obj-C",
        text: "A beginners course covering Objective-C",
        image: "Course Image 3",
        time: "12 sections - 1.5 hours",
        gradient: LinearGradient(gradient: Gradient(colors: [Color("Primary-2"), Color("Secondary-2")]), startPoint: .top, endPoint: .trailing),
        detailTitle: "Objective-C has been used for many legacy iOS applications",
        detailSubHeading: "Objective-C Lesson 1",
        detailBody: "This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply those techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions."
    ),
    
    Item(
        title: "Learn Python",
        text: "Starter course for Python",
        image: "Course Image 2",
        time: "5 sections - 0.5 hour",
        gradient: LinearGradient(gradient: Gradient(colors: [Color("Primary-3"), Color("Secondary-3")]), startPoint: .top, endPoint: .trailing),
        detailTitle: "Python is the latest and up and coming scripting language",
        detailSubHeading: "Python Lesson 1",
        detailBody: "This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply those techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions."
    )
]
