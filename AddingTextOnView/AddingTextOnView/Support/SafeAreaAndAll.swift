//
//  SafeAreaAndAll.swift
//  AddingTextOnView
//
//  Created by Govind on 21/09/22.
//

import SwiftUI

struct SafeAreaAndAll: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .background(.yellow)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            .ignoresSafeArea(edges: .bottom)
    }
}

struct SafeAreaAndAll_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaAndAll()
    }
}
