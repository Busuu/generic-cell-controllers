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

    open override func configureCell(_ cell: T) {
		// By default do nothing.
    }

    public final func currentCell() -> T? {
		return innerCurrentCell()
    }

    open override func willDisplayCell(_ cell: T) {
		// By default do nothing.
    }

    open override func didEndDisplayingCell(_ cell: T) {
		// By default do nothing.
    }
}
