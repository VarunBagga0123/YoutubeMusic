//
//  HomeViewController.swift
//  YoutubeMusic
//
//  Created by Varun Bagga on 19/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

     
        
    }
    
    
    private lazy var headerView : UIView = {
        
        let headerV = UIView()
        headerV.addSubview(headerLogoImageView)
        var constraints =[
            headerLogoImageView
        
        ]
        

        return headerV
    }()
    
    
    
   
    private let headerLogoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(systemName: "s")
        iv.backgroundColor = UIColor.systemRed
        iv.layer.borderWidth = 2
        iv.layer.borderColor = UIColor.systemRed.cgColor
        iv.layer.cornerRadius = 12
        iv.tintColor = .white
        
        return iv
    }()
    

    private let HeaderTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "music".capitalized
        label.font = UIFont.systemFont(ofSize: 26, weight: .heavy)
        return label
    }()
    
    private let headerSearchButton :UIButton = {
        let button = UIButton(type: .system)
        button.imageView?.contentMode = .scaleAspectFit
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        return button
    }()
    private let  headerProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named: "profile-photo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = .clear
        button.layer.cornerRadius = 14
        button.clipsToBounds = true
//        button.addTarget(self, action: #selector(didTapProfile), for: .touchUpInside)
        
        return button
    }()

}
