//
//  CollectionViewCell.swift
//  ec_model
//
//  Created by ゲスト on 2019/02/08.
//  Copyright © 2019 ゲスト. All rights reserved.
//

import UIKit

protocol ScrollMenuViewCellDelegate: NSObjectProtocol {
    func touchedButton(buttonTitle: String?)
}

class ScrollMenuViewCell: UICollectionViewCell {
    @IBOutlet weak var button: UIButton!
    var delegate: ScrollMenuViewCellDelegate?
    var buttonTitle: String?
    @IBAction func touchedButton(_ sender: UIButton) {
        delegate?.touchedButton(buttonTitle: buttonTitle)
    }
}

// MARK: - Life cycle
extension ScrollMenuViewCell {
    
}

// MARK: - Protocol
extension ScrollMenuViewCell {
    
}

// MARK: - method
extension ScrollMenuViewCell {
    func updateCell(name: String) {
        buttonTitle = name
        self.button.setTitle(name, for: UIControl.State.normal)
    }
}
