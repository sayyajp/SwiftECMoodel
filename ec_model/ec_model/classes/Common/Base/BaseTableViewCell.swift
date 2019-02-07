//
//  BaseTableViewCell.swift
//  Learning
//
//  Created by Playground, Inc. on 2018/09/20.
//  Copyright © 2018 Playground, Inc.. All rights reserved.
//

import UIKit

// MARK: - Property
class BaseTableViewCell: UITableViewCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        selectionStyle = .none
        contentView.backgroundColor = UIColor(hex: Const.COLOR.CELL)
    }
}

// MARK: - Life cycle
extension BaseTableViewCell {
}

// MARK: - Protocol
extension BaseTableViewCell {
}

// MARK: - Method
extension BaseTableViewCell {
}
