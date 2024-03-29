//
//  AuthViewController.swift
//  spotify
//
//  Created by Ned Ememanka on 2021-07-15.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {
    
    
    private let webView: WKWebView = {
        
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration ()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        
        return webView
    } ()
    
    
    
    public var completionHandler: ((Bool) -> Void)?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        title="Sign In"
        
        
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
        guard let url = AuthManager.shared.signInURL else {
            
            return
        }
        
        webView.load(URLRequest(url: url))
        
        
    }
    
    
    override func viewDidLayoutSubviews() {
        
        
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    

    

}
