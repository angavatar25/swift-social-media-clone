//
//  TimelineView.swift
//  Social Media Clone
//
//  Created by Ananda Afryan on 30/10/24.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                StoryComponent()
                    .padding(.bottom, 20)
                    .offset(x: 20)
                VStack {
                    HStack {
                        Text("Latest blogs")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                    }.padding(.bottom, 20)
                    ScrollView{
                        ForEach(TimelinePostData) {data in
                            FeedComponent(
                                imgUrl: data.profileImage, postContent: data.post, userName: data.userName
                            )
                        }
                    }
                }.padding()
            }
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
            Spacer()
        }
    }
}

#Preview {
    TimelineView()
}
