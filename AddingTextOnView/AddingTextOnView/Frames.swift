//
//  Frames.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-08.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.white)
            .frame(width: 200, height: 200, alignment: .center)
            .background(.yellow)
            .shadow(color: .black.opacity(0.2), radius: 5, x: -12, y: 0.0)
            .frame(width: 300, alignment: .bottomTrailing)
            .background(.red)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 12, y: 0.0)
            .frame(height: 300, alignment: .bottom)
            .background(.green)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0.0, y: 12.0)
            .frame(width: 400, alignment: .bottomLeading)
            .background(.blue)
            .shadow(color: .black.opacity(0.3), radius: 5, x: -12, y: 12)
            .frame(height: 400, alignment: .top)
            .background(Color.secondary)
            .shadow(color: .black.opacity(0.3), radius: 5, x: 12.0, y: 12.0)
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
