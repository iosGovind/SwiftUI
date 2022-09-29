//
//  UseBinding.swift
//  AddingTextOnView
//
//  Created by Govind on 27/09/22.
//

/*
 Binding let us declear value comming from somewhere and should be shared in both places
 */

import SwiftUI

struct UseBinding: View {
    @State var bgColor: Color = .blue
    @State var title: String = "This is what I am tring these days."
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                MyButtonsCustomView(bgColor: $bgColor, title: $title)
            }
        }
    }
}

struct MyButtonsCustomView: View {
    @Binding var bgColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .yellow
    @State var buttonAccent: Color = .accentColor
    var body: some View {
        Button {
            bgColor = .red
            buttonColor = .blue
            buttonAccent = .white
            title = "Achived it and update the main view from the subview"
            
        } label: {
            Text("Button")
                .foregroundColor(buttonAccent)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(14)
        }
    }
}

struct UseBinding_Previews: PreviewProvider {
    static var previews: some View {
        UseBinding()
    }
}
