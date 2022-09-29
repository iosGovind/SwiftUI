//
//  Stacks.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-08.
//

import SwiftUI

struct Stacks: View {
    
    // VStack -> Vertical
    // HStack -> Horizontal
    // ZStack -> Back to front
    
    var body: some View {
        /*
         //  HStack(alignment: .top, spacing: 20) {
         //  VStack(alignment: .leading, spacing: 30) {
         HStack(alignment: .firstTextBaseline, spacing: nil) {
         //ZStack(alignment: .topLeading) {
         Rectangle()
         .fill(.yellow)
         .frame(width: 140, height: 140)
         .cornerRadius(10)
         Rectangle()
         .fill(.green)
         .frame(width: 120, height: 120)
         .cornerRadius(10)
         Rectangle()
         .fill(.red)
         .frame(width: 100, height: 100)
         .cornerRadius(10)
         }
         //        VStack{
         //            Rectangle()
         //                .fill(.yellow)
         //                .frame(width: 120, height: 120)
         //            Rectangle()
         //                .fill(.green)
         //                .frame(width: 110, height: 110)
         //            Rectangle()
         //                .fill(.red)
         //                .frame(width: 100, height: 100)
         //        }
         */
        
        
        /// Creating a bit complex view
        
        //        ZStack {
        //            Rectangle()
        //                .fill(.yellow)
        //                .frame(width: 350, height: 500)
        //            VStack(spacing: 20) {
        //                Rectangle()
        //                    .fill(.red)
        //                    .frame(width: 150, height: 150)
        //                Rectangle()
        //                    .fill(.green)
        //                    .frame(width: 100, height: 100)
        //                HStack {
        //                    Circle()
        //                        .fill(.white)
        //                    .frame(width: 20, height: 20)
        //                    Circle()
        //                        .fill(.white)
        //                    .frame(width: 20, height: 20)
        //                    Circle()
        //                        .fill(.white)
        //                    .frame(width: 20, height: 20)
        //                }
        //                .padding(.vertical , 12)
        //                .padding(.horizontal , 20)
        //                .background(.black)
        //                .cornerRadius(16)
        //            }
        //            .padding(20)
        //            .background(.blue)
        //
        //        }
        
        //// Somehow around the real world
//        Circle()
//            .overlay{
//                VStack (alignment: .center, spacing: 10) {
//                    Text("5")
//                        .foregroundColor(.white)
//                        .font(.largeTitle)
//                        .underline()
//                    Text("Items in the cart ")
//                        .font(.caption)
//                        .foregroundColor(.gray)
//
//                }
//            }
        // Another way
        
        ZStack {
            Circle()
            VStack {
                Text("5")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .underline()
                Text("Items in the cart ")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
