//
//  TableViewController2.swift
//  nishant
//
//  Created by Admin on 15/12/1939 Saka.
//  Copyright © 1939 Saka Admin. All rights reserved.
//

import UIKit
var arrays2 = ["1. Methods ","2. Access Control ","3. Memory Safety ","4. generics ","5. Protocols ","6. Optional ","7. Error Handling " , "8.Advanced Operators ","9.Nested Type","10.Subscript","11.Clouser","12.Deinitialization" ]

var myIndex3 = 0
class TableViewController2: UITableViewController {



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrays2.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)

        // Configure the cell...
cell1.textLabel?.text = arrays2[indexPath.row]
        cell1.textLabel?.font = UIFont(name: (cell1.textLabel?.font.fontName)!, size: 20.0)
        cell1.textLabel?.layer.cornerRadius = (cell1.textLabel?.frame.height)! / 2
        
        return cell1
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex3 = indexPath.row
        performSegue(withIdentifier: "see" , sender: self)
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
