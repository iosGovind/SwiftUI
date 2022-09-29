//
//  PresentsSheetsOnView.swift
//  AddingTextOnView
//
//  Created by Govind on 28/09/22.
//

// We can only one sheet modifier in view hirerach
// But we can use one full screen cover and one sheet.

import SwiftUI

struct PresentsSheetsOnView: View {
    @State var showSheet: Bool = false
    @State var count: Int = 0
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Button {
                showSheet.toggle()
                count += 1
            } label: {
                Text("Tap me to present sheet ")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(20))
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                Text("Hellow Brohter")
//               // SheetView2()
//            }
            .sheet(isPresented: $showSheet) {
                /*
                 This is a bad practic , Never add conditional logics to the content of sheet there are few other way's to do it.
                 
                if count%2 == 0 {
                    SheetView2()
                } else {
                   */ SheetView()
               /* }
                 */
            }
        }
    }
}

struct SheetView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View  {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding(20)
//                Text("Tap me to present sheet ")
//                    .foregroundColor(.green)
//                    .font(.headline)
//                    .padding()
//                    .background(Color.white.cornerRadius(20))
            }
        }
    }
}

struct SheetView2: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View  {
        ZStack(alignment: .topLeading) {
            Color.yellow
                .ignoresSafeArea()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding(20)
                //                Text("Tap me to present sheet ")
                //                    .foregroundColor(.green)
                //                    .font(.headline)
                //                    .padding()
                //                    .background(Color.white.cornerRadius(20))
            }
        }
    }
}

struct PresentsSheetsOnView_Previews: PreviewProvider {
   static var previews: some View {
       PresentsSheetsOnView()
        //SheetView()
    }
}
