//
//  ViewController.swift
//  Twitter
//
//  Created by Xie kesong on 1/14/17.
//  Copyright © 2017 ___KesongXie___. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class LogInViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginWithTwitterBtn: UIButton!{
        didSet{
            self.loginWithTwitterBtn.layer.cornerRadius = 4.0
        }
    }
    @IBAction func loginWithTwitterBtnTapped(_ sender: UIButton) {
        TwitterClient.logInWithTwitter()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.alwaysBounceVertical = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

    
}

