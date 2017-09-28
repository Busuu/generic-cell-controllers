//
//  FeedTextCellController.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation
import GenericCellControllers

class FeedTextCellController: GenericCellController<FeedTextTableViewCell> {

    private let post: Post
    private let coordinator: FeedCoordinator

    init(post: Post,
         coordinator: FeedCoordinator) {
        self.post = post
        self.coordinator = coordinator
    }

    override func configureCell(_ cell: FeedTextTableViewCell) {
        // Easy configuration since the Cell Controller receive the right type of cell and
        // it is already holding the data this cell needs to display.

        cell.authorLabel.text = "By: \(post.author)"
        cell.contentLabel?.text = post.text
    }

    override func didSelectCell() {
        // We can call the right method in the coordinator since the Cell Controller only deals
        // with one type of data.

        coordinator.postSelected(post)
    }

}
