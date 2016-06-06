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
    
    override func viewWillAppear(animated: Bool)
    {
        //First Call Super
        super.viewWillAppear(animated)
        
        //Register the Custom DataCell
        tableView.registerClass(CustomCell.classForCoder(), forCellReuseIdentifier: "CustomCell")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        //Get Reference to Cell
        let cell = self.tableView.dequeueReusableCellWithIdentifier("CustomCell") as! CustomCell
        
        //...Do Stuff
        
        //Return Cell
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row) selected")
    }

    
}
