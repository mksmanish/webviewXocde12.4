//
//  ViewController.swift
//  webView
//
//  Created by manish on 12/01/21.
//

import UIKit
import WebKit

class ViewController: UIViewController,UIWebViewDelegate, WKUIDelegate{

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet  var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
    }
    func setView() {
        webView.uiDelegate = self
        webView = WKWebView(frame: mainView.bounds,configuration: WKWebViewConfiguration())
        webView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
      //  webView.configuration.preferences.setValue(true, forKey: "allowFileAccessFromFileURLs")
        mainView.addSubview(webView)
        let url = URL(string: "https://github.com/mksmanish/CoredataOperations")
        print(url ?? "")
        let request = URLRequest(url: url!)
        webView.load(request)
    }


}

