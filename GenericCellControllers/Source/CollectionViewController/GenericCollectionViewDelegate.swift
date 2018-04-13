//
//  GenericCollectionViewDelegate.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 13/04/2018.
//  Copyright © 2018 Busuu Ltd. All rights reserved.
//

import Foundation

public protocol GenericCollectionViewDelegate: UICollectionViewDelegate {
    func cellController(for indexPath: IndexPath) -> CollectionCellController
}

public extension GenericCollectionViewDelegate {

    public func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cellController(for: indexPath).willDisplayCell(cell)
    }

    public func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cellController(for: indexPath).didEndDisplayingCell(cell)
    }

    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        cellController(for: indexPath).didSelectCell()
    }

    public func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        cellController(for: indexPath).didDeselectCell()
    }

    public func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        cellController(for: indexPath).didHightlightCell()
    }

    public func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        cellController(for: indexPath).didUnhightlightCell()
    }
}
