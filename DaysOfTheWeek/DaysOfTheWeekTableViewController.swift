//
//  DaysOfTheWeekTableViewController.swift
//  DaysOfTheWeek
//
//  Created by Edmund Bollenbacher on 8/28/18.
//  Copyright © 2018 Edmund Bollenbacher. All rights reserved.
//

import UIKit

class DaysOfTheWeekTableViewController: UITableViewController {
    
    var daysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return daysOfTheWeek.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath)

        let day = daysOfTheWeek[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = day

        return cell
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // check the segues identifier
        // Get the new view controller using segue.destinationViewController.
        // get the day of the week the user tapped on
        // Pass the selected object to the new view controller.
        if segue.identifier == "ToDatDetailVire" {
            if let destinationVC = segue.destination as? DayViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    let day = daysOfTheWeek[indexPath.row]
                    destinationVC.day = day
                }
            }
        }
    }
}






