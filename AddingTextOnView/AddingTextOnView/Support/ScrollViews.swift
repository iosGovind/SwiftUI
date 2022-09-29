//
//  ScrollViews.swift
//  AddingTextOnView
//
//  Created by Govind on 20/09/22.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        
//        ScrollView(showsIndicators: false) {
//            VStack {
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack{
//                        Rectangle()
//                            .fill(.blue)
//                            .frame(width: 300)
//                        Rectangle()
//                            .fill(.blue)
//                            .frame(width: 200 , height: 200)
//                    }
//                }
//                Rectangle()
//                    .fill(.blue)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.blue)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.blue)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.blue)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.blue)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.blue)
//                    .frame(height: 300)
//            }
//        }.padding()
        
        /*
        
        
        ScrollView (showsIndicators: false) {
            VStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach(1..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .shadow(radius: 10)
                                    .frame(width: 200, height: 150)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
         
         */
        
        // This is same as above only we have used lazy prpery of stack which say it will get created untill needed
        ScrollView (showsIndicators: false) {
            LazyVStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack {
                            ForEach(1..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .shadow(radius: 10)
                                    .frame(width: 200, height: 150)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

// In these we should use LazeVStacks and LazyHStaks because it will make our code more efficent and improvies its peorformance

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
    }
}
