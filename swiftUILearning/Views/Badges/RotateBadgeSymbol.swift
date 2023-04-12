//
//  RotateBadgeSymbol.swift
//  swiftUILearning
//
//  Created by eileen on 2022/11/15.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle,anchor: .bottom)
        
//        Path { path in
//           path.move(to: CGPoint(x: 20, y: 0))
//           path.addLine(to: CGPoint(x: 20, y: 200))
//           path.addLine(to: CGPoint(x: 220, y: 200))
//           path.addLine(to: CGPoint(x: 220, y: 0))
//        }
//        .fill(
//           .linearGradient(
//               Gradient(colors: [.green, .blue]),
//               startPoint: .init(x: 0.5, y: 0),
//               endPoint: .init(x: 0.5, y: 0.5)
//           )
//        )
//
        
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadgeSymbol(angle: Angle(degrees: 6))
    }
}
