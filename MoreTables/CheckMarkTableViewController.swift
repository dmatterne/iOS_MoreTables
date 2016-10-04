//
//  CheckMarkTableViewController.swift
//  MoreTables
//
//  Created by Stannis Baratheon on 04/10/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class CheckMarkTableViewController: UITableViewController {
    
    var myList: [String]!
    var marks: [Bool]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myList = ["Arsenal", "Aston Villa" , "Burnley", "Chelsea" , "C Palace" , "Everton" , "Hull" , "Leicester" , "Liverpool" , "Manchester City" , "Manchester United" , "Newcastle" , "Queens Park Rangers" , "Southampton" , "Stoke" , "Sunderland" , "Swansea" , "Spurs" , "West Brom", "West Ham"]
        
        marks = [Bool] (repeating: false, count: myList.count)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkMarkCell", for: indexPath)

        cell.textLabel?.text = myList[indexPath.row]
        
        if marks[indexPath.row]
        {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none }
        
        // Configure the cell...

        return cell
    }
 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if marks[indexPath.row] {
        
            let newCell = tableView.cellForRow(at: indexPath)
            newCell?.accessoryType = .none
        
        } else {
            let newCell2 = tableView.cellForRow(at: indexPath)
            newCell2?.accessoryType = .checkmark
        
        }
        
        marks[indexPath.row] = !marks[indexPath.row]
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
