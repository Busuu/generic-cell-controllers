//
//  SimpleGenericTableViewDelegate.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 12/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SimpleGenericTableViewDelegate: GenericTableViewDelegate {
    var cellControllers: [TableCellController] { get }
}

public extension SimpleGenericTableViewDelegate {

    func cellController(for indexPath: IndexPath) -> TableCellController {
        return cellControllers[indexPath.row]
    }
}
