//
//  GenericCollectionCellController.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 03/07/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation

public typealias CollectionCellController = CellController<UICollectionView>

open class GenericCollectionCellController<T: UICollectionViewCell> : CollectionCellController {

    public final override class var cellClass: AnyClass {
        return T.self
    }

    public final override func innerConfigureCell(_ cell: UICollectionViewCell) {
        let cell = cell as! T
        configureCell(cell)
    }

    public final func currentCell() -> T? {
        return innerCurrentCell() as? T
    }

    public func configureCell(_ cell: T) {
        // By default do nothing.
    }
    
}
