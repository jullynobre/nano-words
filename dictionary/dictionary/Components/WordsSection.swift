//
//  WordsSection.swift
//  dictionary
//
//  Created by Jully Nobre on 17/10/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit

class WordsSection: UITableViewHeaderFooterView {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var markerView: UIView!
    
    override func draw(_ rect: CGRect) {
        self.label.text = "19/10"
        
        self.markerView.layer.cornerRadius = 25
    
    }

}
