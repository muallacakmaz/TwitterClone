//
//  MessengerTableViewCell.swift
//  twitterApp
//
//  Created by Mualla on 17.03.2023.
//

import UIKit

class MessengerTableViewCell: UITableViewCell {

    @IBOutlet weak var personMessage: UILabel!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
