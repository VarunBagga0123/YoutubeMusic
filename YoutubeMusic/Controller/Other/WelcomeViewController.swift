//
//  WelcomeViewController.swift
//  YoutubeMusic
//
//  Created by Varun Bagga on 19/01/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let button:UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Sign In with Spotify", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Youtube Music"
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x: 20,
                              y: view.heigth-50-view.safeAreaInsets.bottom,
                              width: view.width-40,
                              height: 50)
    }
    
    @objc func didTapSignIn(){
        let vc = AuthViewController()
        vc.completionHandler = {[weak self]success in
            DispatchQueue.main.async {
                self?.handleSignIn(success:success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success:Bool){
        //Log User in pr yell at them for error
        
    }
    
}
