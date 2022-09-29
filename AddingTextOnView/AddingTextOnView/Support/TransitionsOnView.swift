//
//  TransitionsOnView.swift
//  AddingTextOnView
//
//  Created by Govind on 28/09/22.
//

/*
 So there is a slight difference b/t Animation and Transistions
 Animations :- When we have obj on the screen we just updaing position, color, shape, size or rotation and all ,We are not adding or removing that obj from the view.
 
 Transistion :- When we are not having obj on the screen and we want to animate in that obj ( Adding it on the screen with animation ) or animate out ( removing that obj from view) it from the view  its Transistion
 
 */


import SwiftUI

//struct TransitionsOnView: View {
//    @State var showView: Bool = true
//    var body: some View {
//        ZStack (alignment: .bottom) {
//            VStack {
//                Button("Button") {
//                   // withAnimation {
//                        showView.toggle()
//                  //  }
//                }
//                Spacer()
//            }
//            if showView {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.green)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    //.transition(.slide)
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeOut(duration: 1.5))
//            }
//        }
//        .ignoresSafeArea(edges: .bottom)
//        }
//}


struct TransitionsOnView: View {
    @State var showView: Bool = true
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button("Button") {
                    // withAnimation {
                    showView.toggle()
                    //  }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.green)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.move(edge: .bottom))
                    //.transition(.opacity)
                    //.transition(.slide)
                    //.transition(.asymmetric(insertion: .slide, removal: .opacity))
                    //.transition(.offset(x:300, y: 300))
                    .transition(.offset(y: 300))
                
            }
        }
        .animation(.easeOut(duration: 0.5) , value: showView)
            .ignoresSafeArea(edges: .bottom)
    }
}


struct TransitionsOnView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsOnView()
    }
}
