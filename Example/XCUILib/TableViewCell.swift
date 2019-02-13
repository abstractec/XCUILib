//
//  TableViewCell.swift
//  XCUILib_Example
//
//  Created by John Haselden on 28/01/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var mainLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
