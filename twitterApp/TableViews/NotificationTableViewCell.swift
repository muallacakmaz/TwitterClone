//
//  NotificationTableViewCell.swift
//  twitterApp
//
//  Created by Mualla on 21.03.2023.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {


    @IBOutlet weak var whatImage: UIImageView!
    @IBOutlet weak var whoImage: UIImageView!
    @IBOutlet weak var whoLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
