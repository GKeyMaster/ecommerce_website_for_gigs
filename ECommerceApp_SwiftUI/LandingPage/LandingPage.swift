//
//  LandingContentView.swift
//  ECommerceApp_SwiftUI
//
//  Created by Nagaraju on 16/12/23.
//


import SwiftUI

struct LandingContentView: View {
    @State private var pageIndex = 0
    private let pages : [Page] = Page.SamplePages
    private let dotApperance = UIPageControl.appearance()
//    @EnvironmentObject var router: Router
    
    var body: some View {
        
        TabView(selection: $pageIndex){
            ForEach(pages) { page in
                VStack{
                    Spacer()
                    LandingView(page: page)
                    Spacer()
                    if page == pages.last {
                        HStack {
                            Spacer()
                            ArrowButton {
                                // Button action
//                                router.navigate(to: .LanguageView)
                            }
                        }
                    }else {
                        HStack {
                            Spacer()
                            ArrowButton {
                                incrementPage()
                            }
                        }
                    }
                    Spacer()
                    
                }
                .tag(page.tag)
            }
        }.animation(.easeOut,value: pageIndex)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .onAppear{
                dotApperance.currentPageIndicatorTintColor = .black
                dotApperance.pageIndicatorTintColor = .green
//                UserDefaults.standard.removeObject(forKey: UserDefaultDeviceToken)
            }
            .overlay(alignment: .topTrailing) {
            }
    }
    
    func incrementPage() {
        pageIndex += 1
        
    }
    func goToZero() {
        pageIndex = 0
    }
}

#Preview {
    LandingContentView()
}



