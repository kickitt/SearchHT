//
//  DetailedCollectionController.swift
//  SearchHT
//
//  Created by Roman Berezin on 24.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class ResultCollectionController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var collectionView: UICollectionView!
    var threeCell = ResultCell()
    let spacing: CGFloat = 20
    var columnCount: CGFloat = 0
    var onSelectedItem: ((NewsModel)->())?
    
    private var dataSource: [NewsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        self.view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ResultCell.self, forCellWithReuseIdentifier: ResultCell.identifier)
        collectionView.alwaysBounceVertical = true
        collectionView.backgroundColor = UIColor().withAlphaComponent(0)
    }
    
    func setupItems(_ items: [NewsModel]) {
        dataSource.removeAll()
        dataSource.append(contentsOf: items)
        collectionView.reloadData()
    }
    
    //MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResultCell.identifier, for: indexPath)
        if let cell = cell as? ResultCell {
            cell.cellTitle.text = dataSource[indexPath.item].newsTitle
            cell.cellText.text = dataSource[indexPath.item].newsText
        }
        return cell
    }
    
    //MARK: - UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        onSelectedItem?(dataSource[indexPath.item])
    }
    
    //MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var size = CGSize(width: 0, height: 0)
        columnCount = 2
        let itemWidth = (collectionView.frame.size.width - 2 * spacing - CGFloat((columnCount - 1)) * spacing) / CGFloat(columnCount)
        size = CGSize(width: itemWidth, height: itemWidth)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    
}
