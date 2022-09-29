//
//  Gradient.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-08.
//

import SwiftUI

struct Gradient: View {
    let gradient = AngularGradient(colors: [.white , .blue], center: .center, angle: .degrees(200))
    var body: some View {
        //RoundedRectangle(cornerRadius: 25)
        Circle()
        //.fill(
                //.blue
//                LinearGradient(colors: [.blue,.red,.yellow], startPoint: .topLeading, endPoint: .center)
                //RadialGradient(colors: [.blue, .white], center: .bottomLeading, startRadius: 100, endRadius: 0)
           //     AngularGradient(colors: [.blue , .white], center: .center, angle: .degrees(30))
          //  )
            .stroke(gradient, style: StrokeStyle(lineWidth: 15, lineCap: .round , lineJoin: .bevel, dash: [18,24]))
            .frame(width: 200, height: 200, alignment: .center)
    }
}

struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        Gradient()
    }
}
