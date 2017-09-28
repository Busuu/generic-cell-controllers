//
//  FeedCoordinator.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation

class FeedCoordinator {

    private weak var viewController: FeedTableViewController?

    init(viewController: FeedTableViewController?) {
        self.viewController = viewController
    }

    func pictureSelected(_ picture: Picture) {

        let imageViewController = ImageDetailViewController(picture: picture)
        viewController?.navigationController?.pushViewController(imageViewController, animated: true)
    }

    func postSelected(_ post: Post) {

        let textViewController = TextDetailViewController(post: post)
        viewController?.navigationController?.pushViewController(textViewController, animated: true)
    }

}
