//
//  ExtractingViewToSubViews.swift
//  AddingTextOnView
//
//  Created by Govind on 27/09/22.
//

import SwiftUI

struct ExtractingViewToSubViews: View {
    
    //    var body: some View {
    //        ZStack {
    //            // Background
    //            Color.red
    //                .opacity(0.3)
    //                .ignoresSafeArea()
    //            // Content
    //            myView
    //        }
    //    }
    //
    //    var myView: some View {
    //        VStack {
    //            Text("1")
    //            Text("Agenda")
    //        }
    //        .padding()
    //        .background(.red)
    //        .cornerRadius(10)
    //    }
    
    // This is fine if we are having all the things static. what if we are haveing dynamic data in our view 🤔???
    // Solution :- Then we will extract this view in its on subview
    
    
    var body: some View {
        ZStack {
            // Background
            Color.red
                .opacity(0.3)
                .ignoresSafeArea()
     //       Content
            contentView
        }
    }
    
    var contentView: some View {
        HStack {
            RedTopLayer(count: 4, name: "Apple", color: .red)
            RedTopLayer(count: 14, name: "Apple", color: .green)
            RedTopLayer(count: 114, name: "Apple", color: .blue)
        }
    }
}

struct ExtractingViewToSubViews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingViewToSubViews()
    }
}

struct RedTopLayer: View {
    let count:Int
    let name: String
    let color: Color
    var body: some View {
        VStack {
            Text("\(count)")
            Text(name)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
