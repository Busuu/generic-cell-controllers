//
//  SectionedGenericCollectionViewDataSource.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SectionedGenericCollectionViewDataSource: GenericCollectionViewDataSource {
    var cellControllers: [[CollectionCellController]] { get }
}

public extension SectionedGenericCollectionViewDataSource {

    func cellController(for indexPath: IndexPath) -> CollectionCellController {
        return cellControllers[indexPath.section][indexPath.item]
    }

    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return cellControllers.count
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellControllers[section].count
    }

}
