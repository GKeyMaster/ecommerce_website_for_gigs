//
//  PageModel.swift
//  ECommerceApp_SwiftUI
//
//  Created by Nagaraju on 16/12/23.
//

import Foundation

struct Page: Equatable,Identifiable {
    
    let id = UUID()
    var name:String
    var imageURL:String
    var description:String
    var tag:Int
    
    static var samplePage = Page(name: "Title Example", imageURL: "image1", description: "this is sample Description", tag: 0)
    
    static var SamplePages : [Page] = [
        Page(name: "Discover, Shop, and Save with ", imageURL: "image1", description: "Welcome to your one-stop destination for a seamless shopping experience", tag: 0),
        Page(name: "Shop Smarter, Live Better with ", imageURL: "image2", description: "Feel free to combine or modify elements based on the theme and message you want to convey to your users", tag: 1),
        
        Page(name: "Elevate Your Lifestyle Shopping Experience", imageURL: "image3", description: "This title aims to convey the idea that using your app enhances and uplifts the user's lifestyle. Adjust it based on your app's specific features and value propositions", tag: 2)
        
    ]
    
    
    
    
}
