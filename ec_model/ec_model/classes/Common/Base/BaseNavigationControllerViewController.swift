//
//  BaseNavigationController.swift
//  Learning
//
//  Created by Playground, Inc. on 2018/08/02.
//  Copyright © 2018年 Playground, Inc.. All rights reserved.
//

import UIKit

// MARK: - Property
class BaseNavigationController: UINavigationController {
    
}

// MARK: - Life cycle
extension BaseNavigationController {
    override func loadView() {
        super.loadView()
        setNavigationBarColor(navigationBar: navigationBar, colorHex: Const.COLOR.HEADER)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setNavigationBarColor(navigationBar: UINavigationBar,
                               colorHex: String) {
        navigationBar.barTintColor = UIColor.init(hex: colorHex)
    }
}

// MARK: - Protocol
extension BaseNavigationController {
    
}

// MARK: - Method
extension BaseNavigationController {
    
}
