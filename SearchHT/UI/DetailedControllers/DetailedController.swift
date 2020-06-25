//
//  DetailedController.swift
//  SearchHT
//
//  Created by Roman Berezin on 25.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class DetailedController: BaseViewController {
    
    let scrollView = UIScrollView()
    var controllerTitle = UILabel()
    var controllerText = UILabel()
    
    var model: NewsModel? {
        didSet {
            controllerTitle.text = model?.newsTitle
            controllerText.text = model?.newsText
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        scrollView.contentSize = UIScreen.main.bounds.size
        controllerTitle.numberOfLines = 0
        controllerText.numberOfLines = 0
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(controllerTitle)
        scrollView.addSubview(controllerText)
        
        scrollView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
            maker.centerX.equalTo(self.view.snp.centerX)
        }
        
        controllerTitle.snp.makeConstraints { maker in
            maker.top.equalTo(scrollView.snp.top).inset(10)
            maker.left.equalTo(scrollView.snp.left).inset(10)
            maker.right.lessThanOrEqualTo(scrollView.snp.right).inset(10)
        }
        
        controllerText.snp.makeConstraints { maker in
            maker.top.equalTo(controllerTitle.snp.bottom).offset(10)
            maker.left.equalTo(scrollView.snp.left).inset(10)
            maker.right.lessThanOrEqualTo(scrollView.snp.right).inset(10)
            maker.bottom.equalTo(scrollView.snp.bottom).inset(10)
        }
    }
}
