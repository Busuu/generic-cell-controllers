//
//  TableCellControllerHolder.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SimpleTableCellControllerHolder {
    var cellControllers: [TableCellController] { get }
}

public protocol SectionedTableCellControllerHolder {
    var cellControllers: [[TableCellController]] { get }
}
