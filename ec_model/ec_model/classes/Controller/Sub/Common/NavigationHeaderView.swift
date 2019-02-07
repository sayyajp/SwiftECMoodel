//
//  NavigationHeaderView.swift
//  Sam
//
//  Created by Hiroki Umatani on 2018/11/17.
//  Copyright © 2018 Engineer. All rights reserved.
//

import UIKit
//import AlamofireImage
//import AutoScrollLabel

// MARK: - Delegate
protocol NavigationHeaderViewDelegate: NSObjectProtocol {
    func touchLeftButton(_ sender: UIButton)
    func touchRightButton(_ sender: UIButton)
}

extension NavigationHeaderViewDelegate {
    func touchLeftButton(_ sender: UIButton) {}
    func touchRightButton(_ sender: UIButton) {}
}


// MARK: - Property
class NavigationHeaderView: BaseView {
    // delegate
    weak var delegate: NavigationHeaderViewDelegate? = nil
    
    // outlet
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    // action
    @IBAction func touchLeftButton(_ sender: UIButton) {
        if let delegate = delegate {
            delegate.touchLeftButton(sender)
        }
    }
    
    @IBAction func touchRightButton(_ sender: UIButton) {
        if let delegate = delegate {
            delegate.touchRightButton(sender)
        }
    }
}

// MARK: - Life cycle
extension NavigationHeaderView {
    override func awakeFromNib() {
        super.awakeFromNib()
        // title label
        titleLabel.isHidden = true
        titleLabel.textColor = UIColor(hex: Const.COLOR.BASE)
        
        // right button
        rightButton.isHidden = true
        
        // left button
        leftButton.isHidden = true
        
        // view
        backgroundColor = UIColor(hex: Const.COLOR.HEADER)
        
        // right image view
        rightImageView.layer.cornerRadius = 10.0
        rightImageView.layer.masksToBounds = true
    }
}

// MARK: - Protocol
extension NavigationHeaderView {
    
}

// MARK: - method
extension NavigationHeaderView {
    func updateTitleLabel(text: String) {
        titleLabel.text = text
        titleLabel.isHidden = false
    }
    
    func updateLeftButton(text: String) {
        leftButton.setTitle(text, for: .normal)
        leftButton.isHidden = false
    }
    
    func updateRightButton(text: String) {
        rightButton.setTitle(text, for: .normal)
        rightButton.isHidden = false
    }
    func updateRightButton(image: UIImage) {
        rightButton.setImage(image, for: .normal)
        rightButton.isHidden = false
        rightButton.setTitle(nil, for: .normal)
        rightButton.tintColor = UIColor.white
    }
    
    func updateRightButton(image_url: String) {
        if let url = URL(string: image_url) {
//            rightImageView.af_setImage(withURL: url)
        }

        rightButton.isHidden = false
        rightButton.setTitle(nil, for: .normal)
        rightButton.tintColor = UIColor.white
    }
}

extension Const {
    class HEADER {
        
    }
}
