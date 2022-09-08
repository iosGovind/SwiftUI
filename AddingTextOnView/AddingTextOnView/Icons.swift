//
//  Icons.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-08.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        //Image(systemName: "heart.fill")
        Image(systemName: "person.fill.badge.minus")
            .renderingMode(.original)
           // .resizable()
        //.aspectRatio(contentMode: .fit)
        //.scaledToFill()
        //.scaledToFit()
            .shadow(color: .gray, radius: 15, x: 0.0, y: 5)
        // .foregroundColor(.blue)
        //.font(.largeTitle)
        .font(.system(size: 80))
            .frame(width: 200, height: 200, alignment: .center)
        //  .clipped()
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
