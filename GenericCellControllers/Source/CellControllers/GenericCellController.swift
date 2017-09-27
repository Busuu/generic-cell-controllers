//
//  GenericCellController.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 27/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation

public typealias TableCellController = CellController<UITableView>
public typealias CollectionCellController = CellController<UICollectionView>

open class GenericCellController<T: ReusableCell> : CellController<T.CellHolder> {

    public final override class var cellClass: AnyClass {
        return T.self
    }

    public final override func innerConfigureCell(_ cell: T.CellHolder.CellType) {
        let cell = cell as! T
        configureCell(cell)
    }

    public final func currentCell() -> T? {
        return innerCurrentCell() as? T
    }

    open func configureCell(_ cell: T) {
        // By default do nothing.
    }

}
