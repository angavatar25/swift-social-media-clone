//
//  Posts.swift
//  Social Media Clone
//
//  Created by Ananda Afryan on 31/10/24.
//

import Foundation

var firstImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOCjDadXHkqhv2DavOOJgunr8hgxvgLtSNFg&s"
var secondImage: String = "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg"
var thirdImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS4bByKPBYMRxshjxwmF01lIxkUwtGz8yCmA&s"
var fourthImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsH3yG5-JkfLGqai7WQAOXmdN3R-44X2nlog&s"
var fifthImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpr43zSyfUTpCwAPDBrbADfoVoAcMIsOSagw&s"

struct TimelinePost: Identifiable {
    var id = UUID()
    var profileImage: String
    var userName: String
    var post: String
}

let TimelinePostData: [TimelinePost] = [
    TimelinePost(profileImage: firstImage, userName: "David Zuckerber", post: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
    TimelinePost(profileImage: secondImage, userName: "Mellstroy", post: "bukan nanya soal mobil, tapi lebih ke driving. gue cewek, rute berkendara Bandung-Jakarta-Bogor. udah doping kopi, sampe minuman energi tapi ga mempan. playlist juga bukan mellow. ada tips biar tetep melek nggak?"),
    TimelinePost(profileImage: thirdImage, userName: "Nathan Fox", post: "Mandi di rest area. Aku biasanya jalur darat Jakarta Surabaya mesti mandi di rest area brebes atau daerah jawa tengah sih."),
    TimelinePost(profileImage: fourthImage, userName: "Jamie Callagher", post: "Istirahat, tidur bentar baru jalan lagi... Bahaya klo d paksain"),
]
