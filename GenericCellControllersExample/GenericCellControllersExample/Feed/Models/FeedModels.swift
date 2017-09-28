//
//  FeedModels.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation

enum FeedElement {
    case picture(Picture)
    case post(Post)
}

struct Picture {
    let author: String
    let imageName: String
}

struct Post {
    let author: String
    let text: String
}
