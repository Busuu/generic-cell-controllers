//
//  GenericCollectionViewDataSource.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol GenericCollectionViewDataSource: UICollectionViewDataSource {
    func cellController(for indexPath: IndexPath) -> CollectionCellController
}

public extension GenericCollectionViewDataSource {

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return cellController(for: indexPath).cellFromReusableCellHolder(collectionView, forIndexPath: indexPath)
    }
}
