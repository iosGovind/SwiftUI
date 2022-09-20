//
//  Initializer.swift
//  AddingTextOnView
//
//  Created by Govind on 20/09/22.
//

import SwiftUI

struct Initializer: View {
    
    // As this variable is a structure member when we have not its default value in it. When we want to create its Instance it will ask for that variables value
    let bgColor: Color
    let title: String
    let count: Int
    enum Fruit: String{
        case apple = "Apple"
        case orange = "Orange"
    }
    init( count: Int , fruit: Fruit ){
        self.count = count
        title = fruit.rawValue
        switch fruit {
        case .orange :
            bgColor = .orange
        case .apple :
            bgColor = .red
        }
    }
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
                
        }.frame(width: 150, height: 150)
            .background(bgColor)
            .cornerRadius(15)
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        // Need to pass value of bgColor because its only decleare only in Initialize not defined
        Initializer(count: 200, fruit: .apple)
    }
}
