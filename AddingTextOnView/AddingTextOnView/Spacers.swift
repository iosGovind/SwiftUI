//
//  Spacers.swift
//  AddingTextOnView
//
//  Created by Govind on 20/09/22.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        
        VStack {
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
           // .background(.yellow)
            .font(.largeTitle)
            .padding(.horizontal)
            Spacer()
                
            Rectangle()
                .frame(height: 60)
        }
        //.background(.blue)
        
        //        HStack(spacing : nil) {
        //            Spacer(minLength: 0)
        //                .frame(height: 10)
        //                .background(.blue)
        //            Rectangle()
        //                .fill(.yellow)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.blue)
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 50, height: 50)
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.blue)
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 50, height: 50)
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.blue)
        //        }
        //        //.padding(20)
        //        //.background(.blue)
        
    }
}

struct Spacers_Previews: PreviewProvider {
    static var previews: some View {
        Spacers()
    }
}
