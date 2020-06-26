//
//  NewsCell.swift
//  SearchHT
//
//  Created by Roman Berezin on 24.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    var cellTitle = UILabel()
    var cellText = UILabel()
    
    var model: NewsModel? {
        didSet {
            cellTitle.text = model?.newsTitle
            cellText.text = model?.newsText
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setup() {
        cellTitle.numberOfLines = 2
        cellTitle.font = cellTitle.font.withSize(20)
        cellText.numberOfLines = 3
        
        self.addSubview(cellTitle)
        self.addSubview(cellText)
        
        cellTitle.snp.makeConstraints { maker in
            maker.top.equalTo(self.snp.top).inset(10)
            maker.left.equalTo(self.snp.left).inset(10)
            maker.right.lessThanOrEqualTo(self.snp.right).inset(10)
        }
        
        cellText.snp.makeConstraints { maker in
            maker.top.equalTo(cellTitle.snp.bottom).offset(10)
            maker.left.equalTo(self.snp.left).inset(10)
            maker.right.lessThanOrEqualTo(self.snp.right).inset(10)
            maker.bottom.equalTo(self.snp.bottom).inset(10)
        }
    }
}
