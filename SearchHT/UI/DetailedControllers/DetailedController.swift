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
    var model: NewsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        
        controllerTitle.numberOfLines = 0
        controllerTitle.font = controllerTitle.font.withSize(25)
        controllerText.numberOfLines = 0
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(controllerTitle)
        scrollView.addSubview(controllerText)
        
        scrollView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        controllerTitle.snp.makeConstraints { maker in
            
            maker.top.left.right.equalToSuperview().inset(10)
            maker.centerX.equalToSuperview()
        }
        
        controllerText.snp.makeConstraints { maker in
            maker.top.equalTo(controllerTitle.snp.bottom).offset(10).labeled("BEACH")
            maker.left.right.bottom.equalToSuperview().inset(10)
            
        }
        controllerTitle.text = model?.newsTitle
        controllerText.text = model?.newsText
    }
}
