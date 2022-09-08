//
//  BackGroundAndOverlays.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-08.
//

import SwiftUI

struct BackGroundAndOverlays: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .frame(width: 120, height: 120, alignment: .center)
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(colors: [.white, .blue], startPoint: .trailing, endPoint: .leading))
        //                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0.0, y: 0)
        //                )
        //            .frame(width: 340, height: 340, alignment: .center)
        //            .background(
        //                Circle()
        //                    .fill(
        //                        LinearGradient(colors: [.blue,.white], startPoint: .trailing, endPoint: .leading)
        //                    )
        //                    .shadow(color: .secondary.opacity(0.4), radius: 0.5, x: -1.5, y: 0.0)
        //
        //            )
        
        ///New Beginig
        ///With Overlays
        //MARK: Overlays
        /*
         All the things till now we were adding in background with overlay we will put things on a top of the current view
         */
        //        RoundedRectangle(cornerRadius: 15)
        //            .overlay {
        //                Text(" Hellow Buddy")
        //                    .foregroundColor(.black)
        //                    .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        //                    .frame(width: 200, height: 100, alignment: .center)
        //                    .background(.red)
        //                    .overlay {
        //                        Text(" Overlay Text")
        //                            .foregroundColor(.secondary)
        //                            .frame(width: 100, height: 100, alignment: .center)
        //                            .background(.yellow)
        //                    }
        //            }
        //            .frame(width: 300, height: 300, alignment: .top)
        //            .foregroundColor(.blue)
        //            .rotation3DEffect(.degrees(30), axis: (x: 180, y: 0, z: 0))
        
        //MARK: Last but not the least
        Rectangle()
            .fill(.blue)
            .overlay(alignment: .bottomLeading, content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 250, height: 250)
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 10, y: -10)
                    .overlay(alignment: .topTrailing, content: {
                        Rectangle()
                            .fill(.green)
                            .frame(width: 200, height: 200)
                            .shadow(color: .black.opacity(0.2), radius: 4, x: -10, y: 10)
                            .overlay(alignment: .topLeading, content: {
                                Rectangle()
                                    .fill(.yellow)
                                    .frame(width: 150, height: 150)
                                    .shadow(color: .black.opacity(0.2), radius: 4, x: 10, y: 10)
                                    .overlay(alignment: .bottomTrailing, content: {
                                        Rectangle()
                                            .fill(.blue)
                                            .frame(width: 100, height: 100)
                                            .shadow(color: .black.opacity(0.2), radius: 4, x: -10, y: 10)
                                            .overlay(alignment: .center, content: {
                                                Rectangle()
                                                    .fill(.white)
                                                    .frame(width: 50, height: 50)
                                                    .shadow(color: .black.opacity(0.2), radius: 4, x: 10, y: 10)
                                            })
                                    })
                            })
                    })
            })
            .frame(width: 300, height: 300, alignment: .center)
    }
}

struct BackGroundAndOverlays_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundAndOverlays()
    }
}
