//
//  TableCellControllerFinder.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

@objc public protocol TableCellControllerFinder {}

public extension TableCellControllerFinder {

    func cellController(for indexPath: IndexPath) -> TableCellController {
        fatalError("Must implemetnetionsinings")
    }
}

public extension TableCellControllerFinder where Self: SimpleTableCellControllerHolder {

    func cellController(for indexPath: IndexPath) -> TableCellController {
        return cellControllers[indexPath.row]
    }
}

public extension TableCellControllerFinder where Self: SectionedTableCellControllerHolder {

    func cellController(for indexPath: IndexPath) -> TableCellController {
        return cellControllers[indexPath.section][indexPath.row]
    }
}
