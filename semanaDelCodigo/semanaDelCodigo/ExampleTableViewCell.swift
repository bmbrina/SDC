//
//  ExampleTableViewCell.swift
//  semanaDelCodigo
//
//  Created by Barbara Brina on 11/3/15.
//  Copyright © 2015 Barbara Brina. All rights reserved.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {
    
    //MARK: Outlets
    
    @IBOutlet weak var colorNumber: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
