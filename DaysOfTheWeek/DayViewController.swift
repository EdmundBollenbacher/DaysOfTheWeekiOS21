//
//  DayViewController.swift
//  DaysOfTheWeek
//
//  Created by Edmund Bollenbacher on 8/28/18.
//  Copyright © 2018 Edmund Bollenbacher. All rights reserved.
//

import UIKit

class DayViewController: UIViewController {
    
    var day = ""

    @IBOutlet var dayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        dayLabel.text = "What's up \(day)!"
        
    }

}
