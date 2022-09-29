//
//  AnimationVsTransitionVsSheet.swift
//  AddingTextOnView
//
//  Created by Govind on 29/09/22.
//

import SwiftUI


//MARK: While using animation(..., value: dd) we have take care that we cant add on in the same pipeline it will be on the higher hirerchy. Example in the scond method me have added animation on the Zstack's pipleine not on the SheetsScreeView()'s pipleline


struct AnimationVsTransitionVsSheet: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //MARK: First Method
//            .sheet(isPresented: $showNewScreen){
//                SheetScreenView()
//            }
            //MARK: Second Method
            /*ZStack {
                if showNewScreen {
                    SheetScreenView(showScreen: $showNewScreen)
                        .padding(.top, 40)
                       // .transition(.move(edge: .bottom))
                        .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
                }
            }.animation(.spring(), value: showNewScreen)
                .zIndex(2.0)
             (
            */
            //MARK: Third Menthod
            
            SheetScreenView(showScreen: $showNewScreen)
                .padding(.top, 40)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
            
        }
    }
}

struct SheetScreenView: View {
    
    //@Environment(\.presentationMode) var mode
    @Binding var showScreen: Bool
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.purple
                .ignoresSafeArea()
            Button {
                //mode.wrappedValue.dismiss()
                showScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    
            }
        }
    }
}

struct AnimationVsTransitionVsSheet_Previews: PreviewProvider {
    static var previews: some View {
        AnimationVsTransitionVsSheet()
       // SheetScreenView()
    }
}
