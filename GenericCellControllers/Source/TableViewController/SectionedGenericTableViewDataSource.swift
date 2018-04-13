//
//  SectionedGenericTableViewDataSource.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SectionedGenericTableViewDataSource: GenericTableViewDataSource {
    var cellControllers: [[TableCellController]] { get }
}

public extension SectionedGenericTableViewDataSource {

    func cellController(for indexPath: IndexPath) -> TableCellController {
        return cellControllers[indexPath.section][indexPath.row]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return cellControllers.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellControllers[section].count
    }

}
