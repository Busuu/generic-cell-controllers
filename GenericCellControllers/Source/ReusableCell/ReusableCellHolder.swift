//
//  ReusableCellHolder.swift
//  Busuu
//
//  Created by Javier Valdera on 30/11/2016.
//  Copyright © 2016 busuu. All rights reserved.
//

import Foundation

// MARK: - ReusableCell
public protocol ReusableCell: class {
    associatedtype CellHolder: ReusableCellHolder
}

extension UITableViewCell: ReusableCell {
    public typealias CellHolder = UITableView
}

extension UICollectionViewCell: ReusableCell {
    public typealias CellHolder = UICollectionView
}

// MARK: - ReusableCellHolder
public protocol ReusableCellHolder: class {
    associatedtype CellType: ReusableCell where CellType.CellHolder == Self

    func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String)
    func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
    func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> CellType
    func cellForItem(at indexPath: IndexPath) -> CellType?
}

extension UITableView: ReusableCellHolder {

    @objc(registerNib:forCellWithReuseIdentifier:)
    public func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) {
        register(nib, forCellReuseIdentifier: identifier)
    }

    @objc(registerClass:forCellWithReuseIdentifier:)
    public func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) {
        register(cellClass, forCellReuseIdentifier: identifier)
    }

    public func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
        return dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }

    public func cellForItem(at indexPath: IndexPath) -> UITableViewCell? {
        return cellForRow(at: indexPath)
    }

}

extension UICollectionView: ReusableCellHolder {}
