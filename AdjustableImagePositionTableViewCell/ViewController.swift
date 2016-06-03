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
        
        let imageName = tableData[indexPath.row]
        print("Car name: \(imageName)")
        
        let image = UIImage(named: imageName)
        cell.imageView1.image = image
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row) selected")
    }
}
