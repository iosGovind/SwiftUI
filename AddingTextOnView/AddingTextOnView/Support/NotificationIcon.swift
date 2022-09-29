//
//  NotificationIcon.swift
//  AddingTextOnView
//
//  Created by Govind Solanki on 2022-09-08.
//

import SwiftUI

struct NotificationIcon: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background {
                Circle()
                    .fill(
                        LinearGradient(colors: [.purple.opacity(0.1),.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .purple, radius: 10, x: 0.0, y: 4)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .shadow(color: .purple.opacity(0.8), radius: 10, x: 0.0, y: 4)
                            .overlay {
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.body)
                            }
                    }
            }
    }
}

struct NotificationIcon_Previews: PreviewProvider {
    static var previews: some View {
        NotificationIcon()
    }
}
