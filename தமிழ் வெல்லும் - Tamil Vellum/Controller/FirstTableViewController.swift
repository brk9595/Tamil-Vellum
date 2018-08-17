//
//  FirstTableViewController.swift
//  தமிழ் வெல்லும் - Tamil Vellum
//
//  Created by Bharath  Raj kumar on 08/08/18.
//  Copyright © 2018 Pixl Ecosystems. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    var data = dataModelBank()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
         //self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
        tableView.tableFooterView = UIView()
       
        //navigationController?.title = "தமிழ் வெல்லும்"
    }

    // MARK: - Table view data source
    
 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.databank.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = data.databank[indexPath.row].title
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let indexpath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
        
      let destinationVC = segue.destination as! ViewController
        
        
        let  details = data.databank[indexpath.row].data
        
        let passTitle = data.databank[indexpath.row].title
        
        destinationVC.toConvert   =  details
        destinationVC.navTitle = passTitle
        
        
        
    }
     func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = .clear
    }
    @IBAction func barButtonInfo(_ sender: Any) {
   
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    override func viewDidAppear(_ animated: Bool) {
        
        //navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
       //navigationController?.navigationBar.backgroundColor = .black
       // navigationController?.navigationBar.shadowImage = UIImage()
        //navigationController?.navigationBar.isTranslucent = true
       //  navigationController?.navigationBar.tintColor = .white
    }
   


}
