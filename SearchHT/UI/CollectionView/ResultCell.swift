//
//  DetailedCollectionViewCell.swift
//  SearchHT
//
//  Created by Roman Berezin on 24.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class ResultCell: UICollectionViewCell {
    
    static var identifier: String = "ResultCell"
    
    var cellTitle = UILabel()
    var cellText = UILabel()
    var model: NewsModel? {
        didSet {
            cellTitle.text = model?.newsTitle
            cellText.text = model?.newsText
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(cellTitle)
        self.addSubview(cellText)
        cellTitle.numberOfLines = 2
        cellTitle.font = cellTitle.font.withSize(20)
        cellTitle.backgroundColor = .red
        cellText.numberOfLines = 0
        cellText.backgroundColor = .green
        self.backgroundColor = .white
        self.reset()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.reset()
    }

    func reset() {
        cellTitle.snp.makeConstraints { maker in
            maker.top.equalTo(self.safeAreaLayoutGuide).inset(10)
            maker.left.equalTo(self.safeAreaLayoutGuide).inset(10)
            maker.right.equalTo(self.safeAreaLayoutGuide).inset(10)
        }
        
        cellText.snp.makeConstraints { maker in
            maker.top.equalTo(cellTitle.snp.bottom).offset(5)
            maker.left.equalTo(self.safeAreaLayoutGuide).inset(10)
            maker.right.equalTo(self.safeAreaLayoutGuide).inset(10)
            maker.bottom.lessThanOrEqualTo(self.safeAreaLayoutGuide).inset(10)
        }
    }
}
