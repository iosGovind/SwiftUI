//
//  PaddingAndSpacing.swift
//  AddingTextOnView
//
//  Created by Govind on 19/09/22.
//

import SwiftUI

struct PaddingAndSpacing: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
            Text("This is description what I am tring to achive and its woeking fine only need to add padding and make it aline to the center")
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(14)
                .shadow(color: .black.opacity(0.4), radius: 4, x: 1, y: 1)
        )
        .padding(.horizontal, 20)
        
//            .font(.system(size: 14))
//            .fontWeight(.semibold)
//            .foregroundColor(.white)
//        //.padding()
//            .padding(.all, 10)
//           // .padding(.top)
//        // After adding we can also add add much as to a specific side as well
//        // .padding(.vertical, 15)
//        //.padding(.horizontal, 20)
//            .padding(.leading, 12)
//            .background(.blue)
//            .cornerRadius(20)
        /////////////////////////////////////////////
//            .frame(maxWidth: .infinity, alignment: .leading)
//            //.background(.blue)
//            .padding(.leading, 20)
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacing()
    }
}
