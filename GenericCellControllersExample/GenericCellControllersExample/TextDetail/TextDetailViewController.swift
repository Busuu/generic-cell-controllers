//
//  TextDetailViewController.swift
//  GenericCellControllersExample
//
//  Created by Javier Valdera on 28/09/2017.
//  Copyright © 2017 Busuu Ltd. All rights reserved.
//

import UIKit

class TextDetailViewController: UIViewController {

    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentFrameView: UIView!

    private let post: Post

    init(post: Post) {
        self.post = post

        super.init(nibName: String(describing: type(of: self)), bundle: Bundle(for: type(of: self)))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\(post.author)'s Post"

        configureContentFrameView()

        contentLabel.text = post.text
    }

}

private extension TextDetailViewController {

    func configureContentFrameView() {
        contentFrameView.layer.cornerRadius = 8
        contentFrameView.layer.borderColor = UIColor.darkGray.cgColor
        contentFrameView.layer.borderWidth = 1
    }

}
