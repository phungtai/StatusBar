//
//  NavigationView.swift
//  Photo Printer
//
//  Copyright © 2017 Canon. All rights reserved.
//

import UIKit

class NavigationView: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let currentVersion = Constants.CurrentTermsOfUseVersion
        let oldVersion = UserDataDefaults.shared.termsOfUseVersion
        if currentVersion <= oldVersion {
            let homeViewController: HomeView = StoryBoardManager.instanceMainView()
            self.setViewControllers([homeViewController], animated: true)
            let appdelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appdelegate.window?.rootViewController = self
        } else {
            let termsOfUseView: TermsOfUseView = StoryBoardManager.instanceTermsOfUse()
            pushViewController(termsOfUseView, animated: true)
        }
    }
    
}
