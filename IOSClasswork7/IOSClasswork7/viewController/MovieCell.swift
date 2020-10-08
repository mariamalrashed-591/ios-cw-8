//
//  MovieCell.swift
//  IOSClasswork7
//
//  Created by Mariam on 10/8/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
