//
//  GenericTableViewDataSource.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 12/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol GenericTableViewDataSource: UITableViewDataSource {
    func cellController(for indexPath: IndexPath) -> TableCellController
}

public extension GenericTableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellController(for: indexPath).cellFromReusableCellHolder(tableView, forIndexPath: indexPath)
    }
}
