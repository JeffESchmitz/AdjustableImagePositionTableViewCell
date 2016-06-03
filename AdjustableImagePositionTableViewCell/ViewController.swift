//
//  ViewController.swift
//  AdjustableImagePositionTableViewCell
//
//  Created by Jeff Schmitz on 6/3/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tableData = ["Ferrari", "BMW", "Mitsubishi", "Lambo"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! CustomCell
        
        cell.imageView1.image = UIImage(named: getRandomCarName())
        cell.imageView2.image = UIImage(named: getRandomCarName())
        cell.imageView3.image = UIImage(named: getRandomCarName())
        cell.imageView4.image = UIImage(named: getRandomCarName())
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row) selected")
    }
    
    func getRandomCarName() -> String {
        let result = tableData[Int(arc4random() % 4)]
        return result
    }
}
