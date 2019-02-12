//
//  ScrollMenuView.swift
//  ec_model
//
//  Created by ゲスト on 2019/02/07.
//  Copyright © 2019 ゲスト. All rights reserved.
//

import UIKit

protocol  ScrollMenuViewDelegate: NSObjectProtocol{
    func touchedButton()
}


// MARK: - Property

class ScrollMenuView: BaseView {
    var categories:[String] = ["menu", "place", "event", "fdsa","menu", "place", "event", "fdhuihuiohuisa"]

    // delegate
    weak var delegate: ScrollMenuViewDelegate?
    // outlet
    @IBOutlet weak var collectionView:
        UICollectionView!
}

// MARK: - Life cycle
extension ScrollMenuView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.dataSource = self
        _ = setCollectionViewLayout(collectionView: collectionView, columnCount: 4 , heithRatio: 0.5)
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "ScrollMenuViewCell")
    }
}

// MARK: - Protocol
extension ScrollMenuView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell: ScrollMenuViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ScrollMenuViewCell", for: indexPath) as? ScrollMenuViewCell else {
            return UICollectionViewCell()
        }
        cell.updateCell(name: categories[indexPath.row])
        cell.delegate = self
        return cell
    }
}

extension ScrollMenuView: ScrollMenuViewCellDelegate {
    func touchedButton() {
        delegate?.touchedButton()
    }
}

// MARK: - method
extension ScrollMenuView {
    
}
