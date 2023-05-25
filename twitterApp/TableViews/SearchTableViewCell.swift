//
//  SearchTableViewCell.swift
//  twitterApp
//
//  Created by Mualla on 21.03.2023.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var numberTable: UILabel!
    @IBOutlet weak var hashtagLabel: UILabel!
    @IBOutlet weak var whereLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
