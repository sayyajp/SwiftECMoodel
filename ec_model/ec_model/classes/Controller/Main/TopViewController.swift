//
//  TopViewController.swift
//  ec_model
//
//  Created by ゲスト on 2019/02/07.
//  Copyright © 2019 ゲスト. All rights reserved.
//

import UIKit

// MARK: - Property
class TopViewController: BaseViewController {
    @IBOutlet weak var scrollMenuView: ScrollMenuView!
    @IBOutlet weak var mainCollectionView: MainCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollMenuView.delegate = self
    }
}

// MARK: - Life cycle
extension TopViewController {
    
}

// MARK: - Protocol
extension TopViewController: ScrollMenuViewDelegate {
    func touchedButton() {
        
    }
}

// MARK: - method
extension TopViewController {
    
}
