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
        
        
        
        self.wordsTableView.delegate = self
        self.wordsTableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

