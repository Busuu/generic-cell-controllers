//
//  FeedDataProvider.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation

struct FeedDataProvider {

    static let harcodedData: [FeedElement] = [
        .picture(Picture(author: "Javier Valdera", imageName: "cat01.jpg")),
        .post(Post(author: "H.P. Lovecraft", text: "In its flawless grace and superior self-sufficiency I have seen a symbol of the perfect beauty and bland impersonality of the universe itself, objectively considered, and in its air of silent mystery there resides for me all the wonder and fascination of the unknown.")),
        .picture(Picture(author: "Celia Pitarch", imageName: "cat02.jpg")),
        .picture(Picture(author: "James Wilkinson", imageName: "cat03.jpg")),
        .post(Post(author: "Ernest Hemingway", text: "A cat has absolute emotional honesty: human beings, for one reason or another, may hide their feelings, but a cat does not.")),
        .picture(Picture(author: "Juan González", imageName: "cat04.jpg")),
        .post(Post(author: "Albert Einstein", text: "You see, wire telegraph is a kind of a very, very long cat. You pull his tail in New York and his head is meowing in Los Angeles. Do you understand this? And radio operates exactly the same way: you send signals here, they receive them there. The only difference is that there is no cat.")),
        .post(Post(author: "Walter Lionel George", text: "Cats know how to obtain food without labor, shelter without confinement, and love without penalties.")),
        .picture(Picture(author: "Catwoman 😼", imageName: "cat05.jpg")),
        .post(Post(author: "Mark Twain", text: "Of all God’s creatures, there is only one that cannot be made slave of the lash. That one is the cat. If man could be crossed with the cat it would improve the man, but it would deteriorate the cat.")),
        .picture(Picture(author: "Crazy Cat Lady", imageName: "cat06.jpg")),
        .post(Post(author: "Nafisa Joseph", text: "I used to love dogs until I discovered cats.")),
        .picture(Picture(author: "Cat Lover 😻", imageName: "cat07.jpg")),
        ]

}
