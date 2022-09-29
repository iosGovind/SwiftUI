//
//  ExtractingViewsAndFunctions.swift
//  AddingTextOnView
//
//  Created by Govind on 27/09/22.
//

/*
 We can extract view as functions as well as var too.
 */

import SwiftUI

struct ExtractingViewsAndFunctions: View {
    
    /*
     @State var bgColor = Color.pink
     var body: some View {
     ZStack{
     //background
     bgColor
     .ignoresSafeArea()
     
     //Content
     VStack {
     Text("Title")
     .font(.largeTitle)
     .foregroundColor(.black)
     Button {
     buttonTapped()
     } label: {
     //                    Text("Press Me")
     //                        .font(.headline)
     //                        .accentColor(.white)
     //                        .padding()
     //                        .background(.black)
     //                        .cornerRadius(10)
     getText()
     }
     
     
     }
     
     }
     }
     func buttonTapped() {
     bgColor = .yellow
     }
     func getText() -> some View {
     return Text("Press Me")
     .font(.headline)
     .accentColor(.white)
     .padding()
     .background(.black)
     .cornerRadius(10)
     }
     */
    
    /*
     @State var bgColor = Color.pink
     var body: some View {
     ZStack{
     //background
     bgColor
     .ignoresSafeArea()
     
     //Content
     VStack {
     Text("Title")
     .font(.largeTitle)
     .foregroundColor(.black)
     Button {
     buttonTapped()
     } label: {
     getText
     }
     
     
     }
     
     }
     }
     func buttonTapped() {
     bgColor = .yellow
     }
     var getText: some View {
     Text("Press Me")
     .font(.headline)
     .accentColor(.white)
     .padding()
     .background(.black)
     .cornerRadius(10)
     }
     */
    
    @State var bgColor = Color.pink
    var body: some View {
        ZStack{
            //background
            bgColor
                .ignoresSafeArea()
            //Content
            contextLayer
        }
    }
    
    func buttonTapped() {
        bgColor = .yellow
    }
    
    var contextLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
                .foregroundColor(.black)
            Button {
                buttonTapped()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .accentColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
    
}

struct ExtractingViewsAndFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingViewsAndFunctions()
    }
}
