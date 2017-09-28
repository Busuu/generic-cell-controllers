//
//  FeedTableViewController.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import UIKit
import GenericCellControllers

class FeedTableViewController: UITableViewController {

    private let cellControllerFactory = FeedCellControllerFactory()
    private var cellControllers: [TableCellController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Cute Cats Feed"

        configureTableView()
        displayData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellControllers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Delegate on your Cell Controllers the dequeuing of the cells.
        return cellControllers[indexPath.row].cellFromReusableCellHolder(tableView, forIndexPath: indexPath)
    }

    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Pass the event to the Cell Controller. It is responsible for knowing what to do.
        cellControllers[indexPath.row].didSelectCell()
    }

}

private extension FeedTableViewController {

    func configureTableView() {

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200

        // Since the Cell Controller Factory is the only one that knows the actual cell controllers
        // we are using, we delegate on it for registering the cells in the UITableView/UICollectionView
        cellControllerFactory.registerCells(on: tableView)
    }

    func displayData() {

        // Get your data from your source (network, database...)
        let data = FeedDataProvider.harcodedData

        // Use the Cell Controller Factory to create your cell controllers from your data,
        // passing any external colaborators the cell controllers might need.
        cellControllers = cellControllerFactory.cellControllers(from: data, coordinator: FeedCoordinator(viewController: self))

        // Reload your UITableView/UICollectionView
        tableView.reloadData()
    }

}
