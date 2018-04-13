//
//  GenericTableViewDataSource.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 12/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

@objc public protocol GenericTableViewDataSource: UITableViewDataSource, TableCellControllerFinder {}

public extension GenericTableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellController(for: indexPath).cellFromReusableCellHolder(tableView, forIndexPath: indexPath)
    }
}

public extension GenericTableViewDataSource where Self: SimpleTableCellControllerHolder {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellControllers.count
    }
}
