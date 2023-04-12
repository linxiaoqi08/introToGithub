//
//  HikeBadge.swift
//  swiftUILearning
//
//  Created by eileen on 2022/11/17.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 350,height: 350)
                .scaleEffect(1.0/3.0)
                .frame(width: 150,height: 150)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
