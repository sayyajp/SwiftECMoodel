//
//  BaseTabBarController.swift
//  Learning
//
//  Created by Playground, Inc. on 2018/08/02.
//  Copyright © 2018年 Playground, Inc.. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    override func loadView() {
        super.loadView()
        setBarTintColor(tabBar: tabBar, colorHex: Const.COLOR.FOOTER)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension BaseTabBarController {

    func setBarTintColor(tabBar: UITabBar, colorHex: String) {
        tabBar.barTintColor = UIColor(hex: colorHex)
    }
}
