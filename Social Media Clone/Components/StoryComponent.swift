//
//  StoryComponent.swift
//  Social Media Clone
//
//  Created by Ananda Afryan on 30/10/24.
//

import SwiftUI

struct StoryComponent: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Moments")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            ScrollView(.horizontal, showsIndicators: false) { // Set the axis to horizontal
                HStack(spacing: 20) { // Use HStack for horizontal layout
                    Circle()
                        .frame(width: 60, height: 60)
                        .overlay(
                            Image(systemName: "plus") // SF Symbol
                                .font(.system(size: 30)) // Image size
                                .foregroundColor(.white) // Image color
                        )
                    ForEach(1...10, id: \.self) { item in
                        Circle()
                            .strokeBorder(Color.blue, lineWidth: 2) // Border color and width
                            .background(
                                Circle()
                                    .fill(Color.gray)
                            )
                            .frame(width: 60, height: 60) // Circle size
                            .overlay(
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(20)
                                    .foregroundColor(.white)
                            )
                    }
                }
            }
        }
    }
}

#Preview {
    StoryComponent()
}
