//
//  Card.swift
//  OnBoarding&_SplashScreenSwiftUI
//
//  Created by Muhammad Farid Ullah on 15/06/2023.
//

import Foundation
struct Card: Identifiable {
    var id  = UUID()
    var image : String
    var title : String
    var description : String
    
}

var testData:[Card] = [

     
// Card(image: "blank",title: "Trying to join GyMan", description: "GyMan provides a best way to manage your gym from anywhere and anytime."),

 Card(image: "onBoard1", title: "How to Manage Activity", description: "The app provides a best way to manage your activity from anywhere and anytime."),
 
 Card( image: "onBoard10",title: "Best workout excercises", description: "You will get the best workout excercise which i have experiencing since 2019."),
 
 Card( image: "onBoard8",title: "Provides best data security", description: "Your data is secured with us, do not share your authentication with others."),
 
 Card( image: "onBoard4",title: "Allow users to use easily", description: "Users are allowed to use the app from any where and anytime."),
 
 Card( image: "onBoard5",title: "Get instant notification", description: "You will get instant notification when the there is any event in the company."),
 
// Card( image: "onBoard5",title: "", description: "You will get instant notification when the fee time is near or the user paid the fee using easypaise."),

]
