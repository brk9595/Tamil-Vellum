//
//  NavigationViewController.swift
//  தமிழ் வெல்லும் - Tamil Vellum
//
//  Created by Bharath  Raj kumar on 08/08/18.
//  Copyright © 2018 Pixl Ecosystems. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

     //   self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
       // self.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.backgroundColor = .black
        // navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent =  false
          navigationController?.navigationBar.tintColor = .white
    }
    

   

}
