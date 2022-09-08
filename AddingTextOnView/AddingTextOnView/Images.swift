//
//  Images.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-08.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("SpiderMan")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200, alignment: .center)
            //.clipped()
            .clipShape(
                // Here we can achive any shape we want.
                //Circle()
                RoundedRectangle(cornerRadius: 40)
                    //.stroke(style: StrokeStyle(lineWidth: 30, lineCap: .square,dash: [40]))
                    .rotation(.degrees(30))
                )
            .shadow(color: .secondary, radius: 12, x: 34, y: -12)
            //.background(.gray)
            //.cornerRadius(45)
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
