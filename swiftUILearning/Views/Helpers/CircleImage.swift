//
//  CircleImage.swift
//  swiftUILearning
//
//  Created by eileen on 2022/11/11.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white,lineWidth: 5)
            }
            .shadow(radius: 8)
        
//        Image("flower")
//            .frame(width: 200,height: 200,alignment: .center)
//            .clipShape(Circle())
//            .overlay {
//                Circle().stroke(.white,lineWidth: 5)
//            }
//            .shadow(radius: 8)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
