//
//  Shapes.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-07.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        //Circle()
        //.foregroundColor(.yellow)
        //.fill(.blue)
        // .trim(from: 0.25, to: 1.0)
        //.stroke(.cyan, style: StrokeStyle(lineWidth: 12, lineCap: .round, dash: [16]))
        //.stroke(.brown, style: StrokeStyle(lineWidth: 16, lineCap: .square, dash: [20], dashPhase: 10))
        //        Ellipse()
        //         .trim(from: 0.25, to: 0.75)
        //         //.stroke(.cyan, style: StrokeStyle(lineWidth: 12, lineCap: .round, dash: [16]))
        //         .stroke(.brown, style: StrokeStyle(lineWidth: 16, lineCap: .square, dash: [20], dashPhase: 10))
        //            .frame(width: 300, height: 160, alignment: .center)
        //        Capsule(style: .continuous )
        //            .trim(from: 0.25, to: 1.0)
        //            .stroke(.cyan, style: StrokeStyle(lineWidth: 12, lineCap: .square, lineJoin: .miter, dash: []))
        //            .frame(width: 300, height: 200, alignment: .center)
        Rectangle()
            .trim(from: 0.5, to: 1.0)
        //.fill(.blue)
            .stroke(.cyan, style: StrokeStyle(lineWidth: 25, lineCap: .square, dash: [2,5,11]))
            .frame(width: 300, height: 200, alignment: .bottom)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
