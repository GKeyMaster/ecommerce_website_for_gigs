//
//  LandingView.swift
//  ECommerceApp_SwiftUI
//
//  Created by Nagaraju on 16/12/23.
//

import SwiftUI

struct LandingView: View {
    
    var page :Page
    
    var body: some View {
        VStack(spacing:20) {
            ZStack {
                PulsatingCirclesView()
                Image ("\(page.imageURL)")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .cornerRadius(30)
                    .cornerRadius(10)
                .padding()
            }
            
            Text(page.name)
                .font(.title)
                
            Text(page.description)
                .font(.subheadline)
                .frame(width:300)
        }
      
    }
}

#Preview {
    LandingView(page: Page.samplePage)
}

