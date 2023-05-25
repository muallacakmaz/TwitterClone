//
//  MessagesViewController.swift
//  twitterApp
//
//  Created by Mualla on 15.03.2023.
//

import UIKit

class MessagesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var messageTableView: UITableView!
    
    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        
        navigationItem.searchController = searchController
        searchController.searchBar.placeholder = "Search Direct Messages"
        
    }
    
    struct profiles {
        let personNames:  String
        let personMessages: String
        let personPicture: String
    }
    
    let data: [profiles] = [
        profiles(personNames: "Charles Leclerc", personMessages: "Verstappen or me?", personPicture: "leclerc"),
        profiles(personNames: "Kemal Kilicdaroglu", personMessages: "Mansur cumhurbaşkanı olacak merak etme.", personPicture: "kilicdaroglu"),
        profiles(personNames: "Max Verstappen", personMessages: "Say hi to the 2023 champion :)", personPicture: "verstappen"),
        profiles(personNames: "Marc Zuckerberg", personMessages: "Hi!, Can you please contact me?", personPicture: "marc"),
        profiles(personNames: "Elon Musk", personMessages: "Work with me", personPicture: "elon"),
        profiles(personNames: "Fernando Alonso", personMessages: "I'm back b*tches!", personPicture: "alanso")
        ]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let profiles = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as! MessengerTableViewCell
        cell.personName.text = profiles.personNames
        cell.personMessage.text = profiles.personMessages
        cell.personImage.image = UIImage(named: profiles.personPicture)
        
        cell.personImage.layer.cornerRadius = cell.personImage.frame.height / 2
        cell.personImage.clipsToBounds = true
        cell.personImage.layer.borderWidth = 1
        cell.personImage.layer.borderColor = UIColor.tintColor.cgColor
        cell.personImage.layer.masksToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "MessagesInsideViewController") as? MessagesInsideViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
