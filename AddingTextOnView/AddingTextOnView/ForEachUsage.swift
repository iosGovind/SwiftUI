//
//  ForEachUsage.swift
//  AddingTextOnView
//
//  Created by Govind on 20/09/22.
//

import SwiftUI

struct ForEachUsage: View {
    
    let data = ["Hi" , " Hellow" , "How are you" , "you are my buddy"]
    
    var body: some View {
        VStack( spacing: 20 ) {
            //            ForEach((0..<10)) { index in
            //                Text("Hello, World!")
            //                    .padding(8)
            //                    .background(.blue)
            //                    .cornerRadius(4)
            //                    .foregroundColor(.white)
            //
            //            }
            ForEach(data.indices) { index in
                Text("\(data[index])")
                    .padding(8)
                    .background(.blue)
                    .cornerRadius(4)
                    .foregroundColor(.white)
            }
            
            //
            
        }
    }
}

struct ForEachUsage_Previews: PreviewProvider {
    static var previews: some View {
        ForEachUsage()
    }
}
