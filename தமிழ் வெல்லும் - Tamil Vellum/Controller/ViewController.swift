//
//  ViewController.swift
//  தமிழ் வெல்லும் - Tamil Vellum
//
//  Created by Bharath  Raj kumar on 16/08/18.
//  Copyright © 2018 Pixl Ecosystems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationItem!
    var toConvert = String()
    var navTitle = ""
    var data = String()
    @IBOutlet weak var textBigLabel: UITextView!
    
   // @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navBar.title = navTitle
        
        self.navigationItem.title = navTitle
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.isTranslucent = true
       // navigationController?.title = "\(navTitle)"
        
        navigationController?.title = navTitle
        textBigLabel.backgroundColor = .clear 

        // Do any additional setup after loading the view.
        data = converText(input: toConvert)
        
       textBigLabel.text = data
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func converText(input : String ) -> String {
    
    let convertedText = input.replacingOccurrences(of: "<[^>]+>", with: "\n", options: .regularExpression, range: nil)
        print(convertedText)
       
        return convertedText
    }
    @IBAction func shareText(_ sender: Any) {
        
        
        let newData = "\(data) + தமிழ் வெல்லும் - Tamil Vellum"
        
        let shareItems:Array = [newData]
        let activityViewController:UIActivityViewController = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
        activityViewController.excludedActivityTypes = [UIActivity.ActivityType.print, UIActivity.ActivityType.postToWeibo, UIActivity.ActivityType.addToReadingList, UIActivity.ActivityType.postToVimeo]
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
       // navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        //navigationController?.navigationBar.shadowImage = UIImage()
      //  navigationController?.navigationBar.isTranslucent = true
      //  navigationController?.navigationBar.backgroundColor = .black
       // navigationController?.navigationBar.tintColor = .white
    }
    
}
