//
//  GenericTableViewDelegate.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 12/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol GenericTableViewDelegate: UITableViewDelegate {
    func cellController(for indexPath: IndexPath) -> TableCellController
}

public extension GenericTableViewDelegate {

    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cellController(for: indexPath).willDisplayCell(cell)
    }

    public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cellController(for: indexPath).didEndDisplayingCell(cell)
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellController(for: indexPath).didSelectCell()
    }

    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        cellController(for: indexPath).didDeselectCell()
    }

    public func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        cellController(for: indexPath).didHightlightCell()
    }

    public func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        cellController(for: indexPath).didUnhightlightCell()
    }
}
