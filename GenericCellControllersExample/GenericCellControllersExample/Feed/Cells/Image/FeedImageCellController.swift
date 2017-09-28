//
//  FeedImageCellController.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation
import GenericCellControllers

class FeedImageCellController: GenericCellController<FeedImageTableViewCell> {

    private let picture: Picture
    private let coordinator: FeedCoordinator

    init(picture: Picture,
         coordinator: FeedCoordinator) {
        self.picture = picture
        self.coordinator = coordinator
    }

    override func configureCell(_ cell: FeedImageTableViewCell) {
        // Easy configuration since the Cell Controller receive the right type of cell and
        // it is already holding the data this cell needs to display.

        cell.authorLabel.text = "By: \(picture.author)"
        cell.pictureImageView.image = UIImage(named: picture.imageName)
    }

    override func didSelectCell() {
        // We can call the right method in the coordinator since the Cell Controller only deals
        // with one type of data.

        coordinator.pictureSelected(picture)
    }

}
