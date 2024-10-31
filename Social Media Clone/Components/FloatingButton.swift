//
//  FloatingButton.swift
//  Social Media Clone
//
//  Created by Ananda Afryan on 31/10/24.
//

import SwiftUI

struct FloatingButton: View {
    var body: some View {
        ZStack {
            // Main Content
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Main Content")
                    .font(.largeTitle)
                    .padding()
                Spacer()
            }

            // Floating Button
            VStack {
                Spacer() // Push button to the bottom
                HStack {
                    Spacer() // Push button to the right
                    Button(action: {
                        print("Floating Button Tapped")
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    FloatingButton()
}
