//
//  NotificationMentionsViewController.swift
//  twitterApp
//
//  Created by Mualla on 29.03.2023.
//

import UIKit

class NotificationMentionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var notificationMentionTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        notificationMentionTableView.delegate = self
        notificationMentionTableView.dataSource = self
        
        notificationMentionTableView.estimatedRowHeight = 135
        notificationMentionTableView.rowHeight = UITableView.automaticDimension
    }
    
    struct notifications {
        let what: String
        let whoPicture: String
        let who: String
        let tweet : String
    }
    
    let data: [notifications] = [
    notifications(what: "at", whoPicture: "leclerc", who: "Charles Leclerc mentioned you", tweet: "@mualla See you in the Istanbul GP :)"),
    notifications(what: "at", whoPicture: "elon", who: "Elon Musk mentioned you", tweet: "@mualla Please check your DMs"),
    notifications(what: "at", whoPicture: "alanso", who: "Fernando Alonso mentioned you", tweet: "@mualla I miss Vettel too... Can't we swich Stroll with Vettel??")
    ]
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let notifications = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationCell", for: indexPath) as! NotificationTableViewCell
        
        cell.whatImage.image = UIImage(named: notifications.what)
        cell.whoImage.image = UIImage(named: notifications.whoPicture)
        cell.whoLabel.text = notifications.who
        cell.tweetLabel.text = notifications.tweet
        
        cell.whoLabel.sizeToFit()
        cell.tweetLabel.sizeToFit()
        
        cell.whoImage.layer.cornerRadius = cell.whoImage.frame.height / 2
        cell.whoImage.clipsToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
 /*   func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    } */
}

