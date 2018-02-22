//
//  CellControllerType.swift
//  Busuu
//
//  Created by Javier Valdera on 29/11/2016.
//  Copyright © 2016 busuu. All rights reserved.
//

import Foundation

open class CellController<T: ReusableCellHolder> {

    private weak var reusableCellHolder: T?
    public var indexPath: IndexPath?

    public init() {}

    open class var cellClass: AnyClass {
        fatalError("Must be overriden by children.")
    }

    public static var cellIdentifier: String {
        return String(describing: cellClass)
    }

    public static func registerCell(on reusableCellHolder: T) {
        let bundle = Bundle(for: cellClass)
        if bundle.path(forResource: cellIdentifier, ofType: "nib") != nil {
            let nib = UINib(nibName: cellIdentifier, bundle: bundle)
            reusableCellHolder.register(nib, forCellWithReuseIdentifier: cellIdentifier)
        } else {
            reusableCellHolder.register(cellClass, forCellWithReuseIdentifier: cellIdentifier)
        }
    }

    public final func cellFromReusableCellHolder(_ reusableCellHolder: T, forIndexPath indexPath: IndexPath) -> T.CellType {
        self.reusableCellHolder = reusableCellHolder
        self.indexPath = indexPath

        let cell = reusableCellHolder.dequeueReusableCell(withReuseIdentifier: type(of: self).cellIdentifier, for: indexPath)
        configureCell(cell)

        return cell
    }

    public final func innerCurrentCell() -> T.CellType? {
        guard let indexPath = indexPath else { return nil }
        return reusableCellHolder?.cellForItem(at: indexPath)
    }

    open func configureCell(_ cell: T.CellType) {
        // By default do nothing.
    }

    open func willDisplayCell(_ cell: T.CellType) {
        // By default do nothing.
    }

    open func didEndDisplayingCell(_ cell: T.CellType) {
        // By default do nothing.
    }

    open func didSelectCell() {
        // By default do nothing.
    }

    open func didDeselectCell() {
        // By default do nothing.
    }

    open func shouldHighlightCell() -> Bool {
        return true
    }

    open func didHightlightCell() {
        // By default do nothing.
    }

    open func didUnhightlightCell() {
        // By default do nothing.
    }

    open func cellSize(reusableCellHolder: T) -> CGSize {
        fatalError("Must be overriden by children.")
    }

    open func estimatedCellSize(reusableCellHolder: T) -> CGSize {
        fatalError("Must be overriden by children.")
    }

    
}
