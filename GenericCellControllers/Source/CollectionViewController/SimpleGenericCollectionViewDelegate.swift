//
//  SimpleGenericCollectionViewDelegate.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SimpleGenericCollectionViewDelegate: GenericCollectionViewDelegate {
    var cellControllers: [CollectionCellController] { get }
}

public extension SimpleGenericCollectionViewDelegate {

    func cellController(for indexPath: IndexPath) -> CollectionCellController {
        return cellControllers[indexPath.item]
    }
}
