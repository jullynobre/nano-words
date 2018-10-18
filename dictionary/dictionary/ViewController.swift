//
//  ViewController.swift
//  dictionary
//
//  Created by Jully Nobre on 17/10/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureSearchBar()
        
        self.configureTableView()
    }
    
    func configureTableView(){
        let cellNib = UINib(nibName: "WordTableViewCell", bundle: nil)
        self.wordsTableView.register(cellNib, forCellReuseIdentifier: "WordTableViewCell")
        
        let headerNib = UINib(nibName: "WordsSection", bundle: nil)
        self.wordsTableView.register(headerNib, forHeaderFooterViewReuseIdentifier: "WordsSection")
        
        self.wordsTableView.rowHeight = 100
        self.wordsTableView.sectionHeaderHeight = 50
        
        self.wordsTableView.delegate = self
        self.wordsTableView.dataSource = self
    }
    
    func configureSearchBar(){
        self.navigationItem.largeTitleDisplayMode = .always
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        self.navigationItem.searchController = searchController
        
        self.navigationItem.hidesSearchBarWhenScrolling = false
    }
}

extension ViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        
        //imprement searchResults
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.wordsTableView.dequeueReusableCell(withIdentifier: "WordTableViewCell", for: indexPath) as! WordTableViewCell
        
        //Configure cell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = self.wordsTableView.dequeueReusableHeaderFooterView(withIdentifier: "WordsSection") as! WordsSection
        
        //configure header
        
        return header
    }
}

