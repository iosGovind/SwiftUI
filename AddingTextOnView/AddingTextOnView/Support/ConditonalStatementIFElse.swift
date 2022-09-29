//
//  ConditonalStatementIFElse.swift
//  AddingTextOnView
//
//  Created by Govind on 27/09/22.
//

import SwiftUI

struct ConditonalStatementIFElse: View {
    @State var showCircle: Bool = false
    @State var showRect:Bool = false
    var body: some View {
        VStack {
            Button("Show circle \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Show Rectangle \(showCircle.description)") {
                showRect.toggle()
            }.padding()
            if showCircle {
                Circle()
                    .fill(.blue)
                    .frame(width: 50)
            }
            if showRect {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50 ,height: 50)
            }
            Spacer()
        }
    }
}

struct ConditonalStatementIFElse_Previews: PreviewProvider {
    static var previews: some View {
        ConditonalStatementIFElse()
    }
}
