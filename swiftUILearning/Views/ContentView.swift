//
//  ContentView.swift
//  swiftUILearning
//
//  Created by eileen on 2022/11/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label(NSLocalizedString("tabFeatureName", comment: ""), systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label(NSLocalizedString("tabListName",comment: ""), systemImage: "list.bullet")
                }
                .tag(Tab.list)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
