//
//  SectionedGenericCollectionViewDelegate.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SectionedGenericCollectionViewDelegate: GenericCollectionViewDelegate {
    var cellControllers: [[CollectionCellController]] { get }
}

public extension SectionedGenericCollectionViewDelegate {

    func cellController(for indexPath: IndexPath) -> CollectionCellController {
        return cellControllers[indexPath.section][indexPath.item]
    }
}
