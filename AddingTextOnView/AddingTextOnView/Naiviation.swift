//
//  Naiviation.swift
//  AddingTextOnView
//
//  Created by Govind on 29/09/22.
//

// MARK: Note
/*  In the navigation view as well our PresntationMode will work same
 like it was dismissing the the view as here with the navigation link it will send us back or it will work as back button
 */
import SwiftUI

struct Naiviation: View {
    //    var body: some View {
    //        NavigationView {
    //            ScrollView {
    //                Text("Hello, World!")
    //                Text("Hello, World!")
    //                Text("Hello, World!")
    //                Text("Hello, World!")
    //                NavigationLink("Next") {
    //                    //          NavigatedScreen()
    //                    NaivationScreenWithHiddenNavigationBar()
    //                }
    //            }
    //            .navigationTitle("Its Naivation")
    //
    //            //.navigationBarTitleDisplayMode(.inline)
    //            //            .toolbar(.hidden)
    //            //            .navigationBarHidden(true)
    //        }
    //    }
    
    // MARK: Naivigation View with a leading and trailing item
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                NavigationLink("Next") {
                    //          NavigatedScreen()
                    NaivationScreenWithHiddenNavigationBar()
                }
            }
            .navigationTitle("Its Naivation")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    //                    Button {
                    //                        print("Got it action ")
                    //                    } label: {
                    //                        Image(systemName: "person.fill")
                    //                            //.font(.title)
                    //                            .foregroundColor(.green)
                    //                    }
                    NavigationLink {
                        ScrollViews()
                    } label: {
                        Image(systemName: "person.fill")
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        NavigatedScreen()
                    } label: {
                       // Image(systemName: "gear")
                        HStack {
                            Image(systemName: "gear")
                            Image(systemName: "flame.fill")
                        }
                    }.accentColor(.red)
                        .padding()
                        .badge(Text("3"))
                }
            }
        }
    }
}

// MARK: Basic view with navigatioon link

struct NavigatedScreen: View {
    var body: some View {
        Text("Its worked it's Quite easy ")
            .navigationTitle("NavigatedScreen")
            .navigationBarTitleDisplayMode(.inline)
        //.navigationBarBackButtonHidden(true)
        NavigationLink {
            SheetView()
        } label: {
            ZStack( alignment: .bottomTrailing) {
                Color.clear
                Text("Tap on me to go more deepted")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.trailing, 20)
            }
        }
    }
}
// MARK: View Where hiding navigation bar and managing it by buttons

struct NaivationScreenWithHiddenNavigationBar: View {
    @Environment(\.presentationMode) var mode
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green View")
                .navigationBarHidden(true)
            // Button for pop the view
            Button {
                mode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
            }
            // Next view link
            VStack {
                Spacer()
                NavigationLink("Click me to go more deeper") {
                    Text(" one more time navigated")
                }
                .padding(.top , 20)
                .frame(width: UIScreen.main.bounds.width)
                .background(.blue)
                .foregroundColor(.white)
            }
        }
    }
}

// MARK: Naivigation View with a leading and trailing item


struct Naiviation_Previews: PreviewProvider {
    static var previews: some View {
        Naiviation()
        //NaivationScreenWithHiddenNavigationBar()
    }
}
