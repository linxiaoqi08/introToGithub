//
//  CategoryHome.swift
//  swiftUILearning
//
//  Created by eileen on 2022/11/16.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView {
            List {
//                modelData.features[0].image
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height:200)
//                    .clipped()
//                    .listRowInsets(EdgeInsets())
                
                
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(),id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            
            .navigationTitle(NSLocalizedString("tabFeatureName", comment: ""))
//                .navigationBarTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                        .frame(width: 40)
                }
            }
            //底部弹窗 presentation
            .sheet(isPresented: $showingProfile) {
                
                let str = NSLocalizedString("swiftUILearning", comment: "")
                Text(str)
                
                ProfileHost()
                    .environmentObject(modelData)
            }
                
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
