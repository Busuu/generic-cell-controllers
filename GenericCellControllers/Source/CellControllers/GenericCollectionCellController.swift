//
//  GenericCollectionCellController.swift
//  GenericCellControllers
//
//  Created by Javier Valdera on 03/07/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import Foundation

@available(*, deprecated, message: "Use GenericCellController<T> instead.")
open class GenericCollectionCellController<T: UICollectionViewCell> : GenericCellController<T> {}
