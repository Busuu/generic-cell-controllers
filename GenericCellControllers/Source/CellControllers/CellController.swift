//
//  CellControllerType.swift
//  Busuu
//
//  Created by Javier Valdera on 29/11/2016.
//  Copyright © 2016 busuu. All rights reserved.
//

import Foundation

public protocol CellControllerType: class {

    associatedtype CellHolder: ReusableCellHolder

    static func registerCell(on reusableCellHolder: CellHolder)

    func cellFromReusableCellHolder(_ reusableCellHolder: CellHolder, forIndexPath indexPath: IndexPath) -> CellHolder.CellType
    func willDisplayCell()
    func cellSelected()
    func cellSize(reusableCellHolder: CellHolder) -> CGSize
}

public extension CellControllerType {

    func willDisplayCell() {
        // By default do nothing.
    }

    func cellSelected() {
        // By default do nothing.
    }

    func cellSize(reusableCellHolder: CellHolder) -> CGSize {
        return CGSize.zero
    }

}

open class CellController<T: ReusableCellHolder>: CellControllerType {

    private weak var reusableCellHolder: T?
    private var indexPath: IndexPath?
    
    public class var cellClass: AnyClass {
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
        innerConfigureCell(cell)

        return cell
    }

    public final func innerCurrentCell() -> T.CellType? {
        guard let indexPath = indexPath else { return nil }
        return reusableCellHolder?.cellForItem(at: indexPath)
    }

    public func innerConfigureCell(_ cell: T.CellType) {
        // By default do nothing.
    }
    
}
