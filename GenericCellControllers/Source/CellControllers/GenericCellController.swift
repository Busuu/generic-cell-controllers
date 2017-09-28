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

    public final override func configureCell(_ cell: T.CellHolder.CellType) {
        let cell = cell as! T
        configureCell(cell)
    }

    public final func currentCell() -> T? {
        return innerCurrentCell() as? T
    }

    public final override func willDisplayCell(_ cell: T.CellHolder.CellType) {
        let cell = cell as! T
        willDisplayCell(cell)
    }

    public final override func didEndDisplayingCell(_ cell: T.CellHolder.CellType) {
        let cell = cell as! T
        didEndDisplayingCell(cell)
    }

    open func configureCell(_ cell: T) {
        // By default do nothing.
    }

    open func willDisplayCell(_ cell: T) {
        // By default do nothing.
    }

    open func didEndDisplayingCell(_ cell: T) {
        // By default do nothing.
    }

}
