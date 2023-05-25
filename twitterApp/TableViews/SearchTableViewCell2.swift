//
//  SearchTableViewCell2.swift
//  twitterApp
//
//  Created by Mualla on 22.03.2023.
//

import UIKit

class SearchTableViewCell2: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var checkOutLabel: UILabel!
    @IBOutlet weak var forYouLabel: UILabel!
    
    var forYouImages = [UIImage(named: "foryou1"),
                        UIImage(named: "foryou2"),
                        UIImage(named: "foryou3"),
                        UIImage(named: "foryou4"),
                        UIImage(named: "foryou5")]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! SearchCollectionViewCell
        
        cell.forYouImageView.image = forYouImages[indexPath.row]
        cell.forYouImageView.layer.cornerRadius = cell.forYouImageView.frame.height / 12
        cell.forYouImageView.clipsToBounds = true
        
        return cell
        
    }
    
    
}
