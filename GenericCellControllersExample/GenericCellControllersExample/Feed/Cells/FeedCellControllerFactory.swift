//
//  FeedCellControllerFactory.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation
import GenericCellControllers

class FeedCellControllerFactory {

    func registerCells(on tableView: UITableView) {
        // The factory is the only one who knows the exact Cell Controllers we are using, hence,
        // it is responsible for registering them in the UITableView/UICollectionView

        FeedImageCellController.registerCell(on: tableView)
        FeedTextCellController.registerCell(on: tableView)
    }

    func cellControllers(from elements: [FeedElement], coordinator: FeedCoordinator) -> [TableCellController] {
        // Matching each type of data to the right Cell Controller is now something we only do once. Here.

        return elements.map { (element) in
            switch element {
            case .picture(let picture):
                return FeedImageCellController(picture: picture, coordinator: coordinator)
            case .post(let post):
                return FeedTextCellController(post: post, coordinator: coordinator)
            }
        }
    }

}
