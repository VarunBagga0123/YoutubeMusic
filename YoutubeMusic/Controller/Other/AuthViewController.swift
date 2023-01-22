//
//  AuthViewController.swift
//  YoutubeMusic
//
//  Created by Varun Bagga on 19/01/23.
//

import UIKit
import WebKit

class AuthViewController: UIViewController,WKNavigationDelegate{
    
    private let webView:WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero,configuration: config)
        return webView
    }()
    
    public var completionHandler : ((Bool) -> Void)?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Sign In"
        webView.navigationDelegate = self
        view.backgroundColor = .black
        view.addSubview(webView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }

}
