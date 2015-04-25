//
//  SpeciesTableViewCell.swift
//  AllAshore
//
//  Created by Jeremiah Montoya on 4/24/15.
//  Copyright (c) 2015 Jeremiah Montoya. All rights reserved.
//

import UIKit

class SimpleTableCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
