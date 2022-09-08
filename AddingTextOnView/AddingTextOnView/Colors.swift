//
//  Colors.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-07.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0, style: .continuous)
            .fill(
                 .secondary
                //Color("CustomColor")
                //Color(uiColor: .yellow)
            )
            .frame(width: 300, height: 200, alignment: .leading)
            //.shadow(radius: 15)
           // .shadow(color: .secondary.opacity(0.8), radius: 5, x: 0.0, y: 0.0)
        .shadow(color: .secondary.opacity(0.8), radius: 5, x: -30.0, y: 20.0)
            
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
            .preferredColorScheme(.light)
    }
}
