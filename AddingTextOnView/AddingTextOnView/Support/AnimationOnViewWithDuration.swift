//
//  AnimationOnViewWithDuration.swift
//  AddingTextOnView
//
//  Created by Govind on 28/09/22.
//

import SwiftUI

struct AnimationOnViewWithDuration: View {
    @State var isAnimate: Bool = false
    var body: some View {
        VStack {
            Button("Animate") {
                isAnimate.toggle()
            }
            .padding()
            .background(.blue)
            .accentColor(.white)
            .cornerRadius(14)
        
      RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimate ? 300 : 100 , height: 100)
                .animation(.default, value: isAnimate)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimate ? 300 : 100 , height: 100)
//                .animation(.easeIn, value: isAnimate)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimate ? 300 : 100 , height: 100)
//                .animation(.easeOut, value: isAnimate)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimate ? 300 : 100 , height: 100)
//                .animation(.linear, value: isAnimate)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimate ? 300 : 100 , height: 100)
                .animation(.spring(), value: isAnimate)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimate ? 300 : 100 , height: 100)
                .animation(.spring(response: 1.0,
                                   dampingFraction: 0.2,
                                   blendDuration: 1.0),
                           value: isAnimate)
        }
    }
}

struct AnimationOnViewWithDuration_Previews: PreviewProvider {
    static var previews: some View {
        AnimationOnViewWithDuration()
    }
}
