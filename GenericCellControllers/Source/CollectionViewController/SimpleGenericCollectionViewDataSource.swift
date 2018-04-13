//
//  SimpleGenericCollectionViewDataSource.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SimpleGenericCollectionViewDataSource: GenericCollectionViewDataSource {
    var cellControllers: [CollectionCellController] { get }
}

public extension SimpleGenericCollectionViewDataSource {

    func cellController(for indexPath: IndexPath) -> CollectionCellController {
        return cellControllers[indexPath.item]
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellControllers.count
    }

}
