//
//  NewsListController.swift
//  SearchHT
//
//  Created by Roman Berezin on 24.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit
import SnapKit

class NewsListController: BaseViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    let tableView = UITableView()
    var searchController: UISearchController?
    let dataSource = NewsModel.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Новости, которые мы заслужили"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NewsCell.self, forCellReuseIdentifier: "NewsCell")
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        let resController = ResultCollectionController()
        searchController = UISearchController(searchResultsController: resController)
        
        resController.onSelectedItem = { [weak self] item in
            self?.didSelectItem(item)
        }
        
        searchController?.searchBar.delegate = self
        searchController?.hidesNavigationBarDuringPresentation = false
        
        if #available(iOS 11.0, *) {
            self.navigationItem.searchController = searchController
        } else {
            tableView.tableHeaderView = searchController?.searchBar
        }
        
    }
    
    private func didSelectItem(_ item: NewsModel) {
        let controller = DetailedController()
        controller.model = item
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = dataSource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)
        if let cell = cell as? NewsCell {
            cell.model = model
        }
        return cell
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //push detailedController
        didSelectItem(dataSource[indexPath.row])
    }
    
    //MARK: - UISearchBarDelegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
       
        let resArray = dataSource.filter { element -> Bool in
            return element.newsTitle.lowercased().contains(searchText.lowercased())
        }
        
        if let resultController = searchController?.searchResultsController as? ResultCollectionController {
            resultController.setupItems(resArray)
        }
    }
}
