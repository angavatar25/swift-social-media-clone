//
//  FeedComponent.swift
//  Social Media Clone
//
//  Created by Ananda Afryan on 30/10/24.
//

import SwiftUI


struct LineView: View {
    var body: some View {
        Rectangle()
            .frame(height: 0.5) // Height of the line
            .foregroundColor(.black) // Color of the line
            .padding() // Optional: add padding around the line
    }
}



struct FeedComponent: View {
    @State var imgUrl: String
    @State var postContent: String
    @State var userName: String

    
    let backgroundColor = Color(red: 248/255.0, green: 248/255.0, blue: 248/255.0)
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                HStack {
                    AsyncImage(url: URL(string: imgUrl)) { phase in
                        switch phase {
                        case .empty:
                            Circle()
                            .fill(.gray)
                            .frame(width: 50, height: 50)
                        case .success(let image):
                            image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        case .failure(let error):
                            Image(systemName: "photo") // Placeholder if image fails to load
                                .resizable()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.gray)
                        @unknown default:
                            fatalError()
                        }
                    }
                    VStack(alignment: .leading) {
                        Text(userName)
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        Text("4 mins ago")
                            .font(.system(size: 12))
                        
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                Text(postContent)
                    .padding(.top, 20)
                    .multilineTextAlignment(.leading)
                VStack(alignment: .leading) {
                    HStack {
                        HStack(spacing: -3) {
                            Image("person1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 18, height: 18)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            
                            Image("person2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 18, height: 18)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            
                            Image("person3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 18, height: 18)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        }
                        Text("Connie and others like it")
                            .font(.system(size: 12))
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                    .padding(.leading, 5)
                VStack {
                    LineView()
                }
                HStack(alignment: .center) {
                    HStack {
                        Image(systemName: "heart")
                        Text("25 likes")
                            .font(.system(size: 12))
                    }
                    HStack {
                        Image(systemName: "message")
                        Text("25 comments")
                            .font(.system(size: 12))
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.padding()
        }.background(backgroundColor)
        .cornerRadius(5)
    }
}

#Preview {
    FeedComponent(
        imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOCjDadXHkqhv2DavOOJgunr8hgxvgLtSNFg&s", postContent: "Buah zakar isine gulali, loh kok wingi diisep sesuk wis lali", userName: "Sopo yo aku ra reti"
    )
}
