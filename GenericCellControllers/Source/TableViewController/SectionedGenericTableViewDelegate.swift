//
//  SectionedGenericTableViewDelegate.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SectionedGenericTableViewDelegate: GenericTableViewDelegate {
    var cellControllers: [[TableCellController]] { get }
}

public extension SectionedGenericTableViewDelegate {

    func cellController(for indexPath: IndexPath) -> TableCellController {
        return cellControllers[indexPath.section][indexPath.row]
    }
}
