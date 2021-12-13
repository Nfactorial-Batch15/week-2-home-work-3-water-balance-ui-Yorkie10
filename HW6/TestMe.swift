//
//  TestMe.swift
//  HW6
//
//  Created by Yerkebulan Sharipov on 13.12.2021.
//

import SwiftUI



struct TestMe: View {
    
    var body: some View {
          ZStack{
              VStack{
                  Spacer()
                  TabNav()
              }
              .edgesIgnoringSafeArea(.all)
          }
      }
  }
    
struct TabNav: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.blue
    }
    @State private var selectedTab: Int = 1
    
    var body: some View {

        TabView(selection: $selectedTab) {
            MainScreen()
                .tabItem {
                    Label("Main", systemImage: "house")
                }
                .tag(1)
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "slider.horizontal.3")
                }
                .tag(2)

             History()
                .tabItem {
                    Label("History", systemImage: "doc")
                }
                .tag(3)
        }
        .accentColor(.blue)

    }
}
    

struct TestMe_Previews: PreviewProvider {
    static var previews: some View {
        TestMe()
    }
}
