//
//  HomePageViewController.swift
//  twitterApp
//
//  Created by Mualla on 15.03.2023.
//

import UIKit
import LZViewPager

class HomePageViewController: UIViewController, LZViewPagerDelegate, LZViewPagerDataSource {
    
    // MARK: - Outlets
    
    @IBOutlet weak var viewPager: LZViewPager!
    
    
    // MARK: - Variables
    
    private var subControllers:[UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPagerProperties()
        
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "twitter"))
    }
    
    func viewPagerProperties() {
        viewPager.delegate = self
        viewPager.dataSource = self
        viewPager.hostController = self
        
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HPForYouViewController") as! HPForYouViewController
        
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HPFollowingViewController") as! HPFollowingViewController
        
        vc1.title = "For you"
        vc2.title = "Following"
        
        subControllers = [vc1,vc2]
        viewPager.reload()
    }

    func numberOfItems() -> Int {
        return self.subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        return subControllers[index]
    }
    
    func button(at index: Int) -> UIButton {
        let button = UIButton()
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = .systemCyan
        return button
    }
    
    func colorForIndicator(at index: Int) -> UIColor {
        return .gray
    }
    
}
