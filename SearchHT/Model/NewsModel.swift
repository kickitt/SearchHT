//
//  NewsModel.swift
//  SearchHT
//
//  Created by Roman Berezin on 24.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

struct NewsModel {
    let newsLable: String
    let newsText: String
    
    func getData() -> [NewsModel] {
        return [NewsModel(newsLable: "", newsText: ""),
        NewsModel(newsLable: "", newsText: ""),
        NewsModel(newsLable: "", newsText: ""),
        NewsModel(newsLable: "", newsText: ""),
        NewsModel(newsLable: "", newsText: ""),
        NewsModel(newsLable: "", newsText: "")]
    }
}
