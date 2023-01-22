//
//  ViewController.swift
//  YoutubeMusic
//
//  Created by Varun Bagga on 18/01/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = HomeViewController()
        let vc2 = SearchViewController()
        let vc3 = LibraryViewController()
        
        
        let nav1 = configureNavController(title: "Home", image: "music.note.house", controller: vc1)
        let nav2 = configureNavController(title: "Explore", image: "safari", controller: vc2)
        let nav3 = configureNavController(title: "Library", image: "tray.full", controller: vc3)
        
        setViewControllers([nav1,nav2,nav3], animated: true)
    }
    
    private func configureNavController(title:String,image:String,controller:UIViewController) -> UINavigationController{
        
        let vc = UINavigationController(rootViewController: controller)
        controller.title = title
        vc.tabBarItem.image = UIImage(systemName: image)
        vc.tabBarItem.title = title
        vc.tabBarItem.selectedImage = UIImage(systemName: "\(image).fill")
        
        return vc
    }


}

