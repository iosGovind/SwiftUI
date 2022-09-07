//
//  ContentView.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-05
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world! Its I am doing for practies and  i eskmn sd;flkan as;fnak")
        //.fontWeight(.semibold)
        //.bold()
        // .underline(true, color: .brown)
        
        //.strikethrough(true, color: .black)
        // Make a cross line on text
        
        //.italic()
        
            .baselineOffset(10)
        // Line space at bottom of line and if added in -10 then it will add space in the top
        
            .kerning(-1)
        // A positive value increases the spacing between characters,
        // while a negative value brings the characters closer together.
        
            .padding()
        //.font(.caption)
        // .font(.largeTitle)
         //   .multilineTextAlignment(.trailing)
        
        //.font(.system(size: 46, weight: .light, design: .rounded))
        
            .foregroundColor(.blue)
            .background(.yellow)
            .cornerRadius(15)
            .frame(width: UIScreen.main.bounds.width - 40, height: 200, alignment: .trailing)
        
        // if there is single line of text and we want to set its frame and alingmentt then we can set it through frame alignemt too.
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
