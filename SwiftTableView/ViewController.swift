//
//  ViewController.swift
//  SwiftTableView
//
//  Created by Thota, Surendra Babu on 20/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableViewObject: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Initializing an arrary numbers
    
    var numbers : [String] = ["one", "two", "three", "four"]
    
    // Creating function numberOfRowsInSection to return the no of rows
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    // Creating the function cellForRowAtIndexPath to return value of the each cell
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
        cell.textLabel!.text = numbers[indexPath.row]
        return cell
    }

    
}

