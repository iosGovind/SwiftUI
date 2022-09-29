//
//  Grids.swift
//  AddingTextOnView
//
//  Created by Govind on 21/09/22.
//

import SwiftUI

struct Grids: View {
    //MARK: With Fixed Size
    //    let coloum: [GridItem] = [GridItem(.fixed(50), spacing: 10),
    //                              GridItem(.fixed(80), spacing: 10) ,
    //                              GridItem(.fixed(30), spacing: 10) ,
    //                              GridItem(.fixed(50), spacing: 10)]
    //    var body: some View {
    //        LazyVGrid(columns: coloum) {
    //            ForEach(0..<5) { index in
    //                Rectangle()
    //                Rectangle()
    //                Circle()
    //                if index == 2 {
    //                    RoundedRectangle(cornerRadius: 20)
    //                }
    //
    //            }
    //
    //        }
    //    }
    
    //    let coloum: [GridItem] = [GridItem(.fixed(50), spacing: 20),
    //                              GridItem(.fixed(100), spacing: 10),
    //                              GridItem(.fixed(50), spacing: 10),
    //                              GridItem(.fixed(50), spacing: 10)]
    //    // Coloum array says In how many parts we want to divide our main grid
    //    var body: some View {
    //        LazyVGrid(columns: coloum) {
    //            // Here we are createing views
    //            /*
    //             Like Our view is divided into 4 parts
    //             and we are generating overall 20 views
    //             so in one coloum we will have 5 views
    //
    //             */
    //            ForEach(0..<10) { index in
    //                Rectangle()
    //                Rectangle()
    //            }
    //        }
    //    }
    
    //MARK: With Flexible Size
    //    let coloum: [GridItem] = [ GridItem(.flexible(minimum: 20, maximum: 300), spacing: 20),
    //                               GridItem(.flexible(minimum: 20, maximum: 300), spacing: 20)]
    //    var body: some View {
    //        ScrollView {
    //            LazyVGrid(columns: coloum) {
    //                ForEach(0..<10) { index in
    //                    if index != 2 {
    //                        Rectangle()
    //                            .fill(.blue)
    //                            .frame(height: 80)
    //                    }
    //                    if index != 7 {
    //                        Rectangle()
    //                            .fill(.yellow)
    //                            .frame(height: 80)
    //                    }
    //                }
    //            }
    //        }
    //    }
    //MARK: With Adaptive Size
    //    let coloum: [GridItem] = [ GridItem(.adaptive(minimum: 50, maximum: 300), spacing: 20),
    //                               GridItem(.adaptive(minimum: 150, maximum: 300), spacing: 20)]
    //    /*
    //     Here there two adaptive coloums and it will try to fix as much as possible item in a single row with the specified constraints
    //     */
    //    var body: some View {
    //        ScrollView {
    //            LazyVGrid(columns: coloum) {
    //                ForEach(0..<50) { index in
    //                    Rectangle()
    //                        .fill(.blue)
    //                        .frame(height: 80)
    //                }
    //            }
    //        }
    //    }
    
    //MARK: Realworld example
    //    let coloum: [GridItem] = [ GridItem(.flexible()),
    //                               GridItem(.flexible()),
    //                               GridItem(.flexible())]
    //
    //    var body: some View {
    //        ScrollView(showsIndicators: false) {
    //            Rectangle()
    //                .fill(.white)
    //                .frame(height: 400)
    //            LazyVGrid(columns: coloum) {
    //                ForEach(0..<20) { index in
    //                    Rectangle()
    //                        .fill(.blue)
    //                        .frame(height: 150)
    //                }
    //            }
    //        }
    //    }
    
    let coloum: [GridItem] = [ GridItem(.flexible(), spacing: 6), // This spacing means spacing b/w first and second coloum
                               GridItem(.flexible(), spacing: 6),
                               GridItem(.flexible(), spacing: 6) ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Rectangle()
                .fill(.orange)
                .frame(height: 500)
            LazyVGrid(columns: coloum,
                      alignment: .center,
                      spacing: 6, // This spacing is in b/w the rows
                      pinnedViews: [.sectionHeaders , .sectionFooters]) {
                Section(header:
                            Text("Section 1 ")
                    .font(.title)
                    .frame(maxWidth: .infinity , alignment: .leading )
                    .padding(.all , 8)
                    .background(.yellow)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.blue)
                            .frame(height: 150)
                    }
                }
                Section(header:
                            Text("Section 2 ")
                    .font(.title)
                    .frame(maxWidth: .infinity , alignment: .leading )
                    .padding(.all , 8)
                    .background(.gray)
                    .padding(),
                        
                        footer:
                            Text("Section Ended ")
                    .font(.title)
                    .frame(maxWidth: .infinity , alignment: .leading )
                    .padding(.all , 8)
                    .background(.red)
                    .padding()){
                        
                        ForEach(0..<10) { index in
                            Rectangle()
                                .fill(.yellow)
                                .frame(height: 150)
                        }
                    }
                
            }
        }
    }
}

struct Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}
