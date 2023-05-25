//
//  SearchViewController.swift
//  twitterApp
//
//  Created by Mualla on 15.03.2023.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let searchController = UISearchController()
    
    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        searchController.searchBar.placeholder = "Search Twitter"
        
        searchTableView.delegate = self
        searchTableView.dataSource = self
    }

    struct trends {
        let fromwhere: String
        let hashtag: String
        let howmuch: String
    }
    
    let data: [trends] = [
        trends(fromwhere: "Trending in Worldwide", hashtag: "Charles Leclerc", howmuch: "197.3k Tweet"),
        trends(fromwhere: "Trending in Turkey", hashtag: "#3NisanYuzYuze", howmuch: "68.9k Tweet"),
        trends(fromwhere: "Trending in Worldwide", hashtag: "Avatar The Way of Water", howmuch: "283.7k Tweet"),
        trends(fromwhere: "Trending in Turkey", hashtag: "Celal Şengör", howmuch: "16.6k Tweet"),
        trends(fromwhere: "Trending in Japan", hashtag: "オロチ兄弟", howmuch: "28.3k Tweet")
    ]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 5}
        else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            let trends = data[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrendsCell", for: indexPath) as! SearchTableViewCell
            
            cell.whereLabel.text = trends.fromwhere
            cell.hashtagLabel.text =
            trends.hashtag
            cell.numberTable.text = trends.howmuch
            
            
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "PhotosForYouCell", for: indexPath) as! SearchTableViewCell2
            
            cell.checkOutLabel.text = "Check out these popular and trending photos for you"
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 90}
        else {
            return 250
        }
    }
    
}
