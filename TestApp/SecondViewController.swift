//
//  SecondViewController.swift
//  TestApp
//
//  Created by Dev on 2/12/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        edgesForExtendedLayout = []
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.isStatusBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.isStatusBarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backButtonClick(_ sender: Any) {
        navigationController?.popViewController(animated: true)
//        navigationController?.popoverPresentationController
    }
    
}

//extension SecondViewController: ICustomNavigationBarCallback {
//    func customNavigationBarBackButton() {
//        navigationController?.popViewController(animated: true)
//    }
//}

