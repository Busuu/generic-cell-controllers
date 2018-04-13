//
//  SimpleGenericTableViewDataSource.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 12/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol SimpleGenericTableViewDataSource: GenericTableViewDataSource, SimpleTableCellControllerHolder {
}

public extension SimpleGenericTableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellControllers.count
    }

}
