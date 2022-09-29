//
//  StateVar.swift
//  AddingTextOnView
//
//  Created by Govind on 27/09/22.
//

/*
State is a property wrapper which allows us to modify values in a structure ,which would normally not allowed because structures are value types.
 When we are putting state infront of any property we are just moved its storage out of Struct, now it will get allocated into shared storage managed by SwiftUI. It means swiftUI can destroy and recreate our struct as many time as it want without lossing our  values
 
 Generaly should not be shared with other views

*/




import SwiftUI

struct StateVar: View {
    
    @State var bgColor: Color = .green
    @State var title: String = "My Title"
    @State var count: Int = 0
    var body: some View {
        ZStack {
            // background
            bgColor
                .ignoresSafeArea()
            
            // Conten
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                HStack(spacing: 20) {
                    Button(" Button 1") {
                   //     print("Hi")
                        bgColor = .yellow
                        title = "Button 1 tapped"
                        count += 1
                        
                    }
                    Button(" Button 2") {
                    //    print("Hi")
                        bgColor = .orange
                        title = "Button 2 tapped"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateVar_Previews: PreviewProvider {
    static var previews: some View {
        StateVar()
    }
}
