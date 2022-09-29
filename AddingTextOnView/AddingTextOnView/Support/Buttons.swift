//
//  Buttons.swift
//  AddingTextOnView
//
//  Created by Govind on 24/09/22.
//

import SwiftUI

struct Buttons: View {
    @State var title = "I am title"
    var body: some View {
        VStack( spacing: 20) {
            Text(title)
            Button("Tap on me") {
                print("Hi tapped")
                title = "Button was tapped"
            }
            //.foregroundColor(.yellow)
            .accentColor(.gray)
            Button {
                title = "Second button pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                //.shadow(color: .black, radius: 3, x: 1, y: 1)
                    .background(
                        Color.blue
                            .cornerRadius(20)
                            .shadow(radius: 10)
                    )
            }
            Button {
                title = "3rd button tapped"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            Button {
                
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.blue)
                    .bold()
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.blue, lineWidth: 2.0)
                    )
            }

        }
    }
}
struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
