//
//  MainCollectionView.swift
//  ec_model
//
//  Created by ゲスト on 2019/02/12.
//  Copyright © 2019 ゲスト. All rights reserved.
//

import UIKit

protocol MainCollectionViewDelegate: NSObjectProtocol{
    
}

extension MainCollectionViewDelegate {
}

// MARK: - Property
class MainCollectionView: BaseView {
    @IBOutlet weak var collectionView: UICollectionView!
}

// MARK: - Life cycle
extension MainCollectionView {
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "MainCollectionViewCell")
    }
}

// MARK: - Protocol
extension MainCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath)
        return cell
    }
    
    
}

// MARK: - method
extension MainCollectionView {
    
}

