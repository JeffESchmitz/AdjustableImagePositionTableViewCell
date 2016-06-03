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
    // Tuple holds car name, logo image, hidden boolean
    var tupleTableData: [(String, UIImage, Bool)]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.tableData.count
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! CustomCell
        
        // basic image displaying
//        cell.imageView1.image = UIImage(named: getRandomCarName())
//        cell.imageView2.image = UIImage(named: getRandomCarName())
//        cell.imageView3.image = UIImage(named: getRandomCarName())
//        cell.imageView4.image = UIImage(named: getRandomCarName())
//        
//        for car in tupleTableData! {
//            print(car)
//        }
        
        // show matching image from the tuple index
        cell.imageView1.image = UIImage(named: tupleTableData![0].0)
        if tupleTableData![1].2 {
            cell.imageView2.image = UIImage(named: tupleTableData![1].0)
        }
//        cell.imageView2.image = UIImage(named: tupleTableData![1].0)
        cell.imageView3.image = UIImage(named: tupleTableData![2].0)
        cell.imageView4.image = UIImage(named: tupleTableData![3].0)
        
        
        
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row) selected")
    }
    
    func getRandomCarName() -> String {
        let result = tableData[Int(arc4random() % 4)]
        return result
    }
    
    func loadSampleData() {

        var carName = getRandomCarName()
        tupleTableData = [(carName, UIImage(named: carName)!, true)]
        
        carName = getRandomCarName()
        tupleTableData?.append((carName, UIImage(named: carName)!, false))
        
        carName = getRandomCarName()
        tupleTableData?.append((carName, UIImage(named: carName)!, true))

        carName = getRandomCarName()
        tupleTableData?.append((carName, UIImage(named: carName)!, true))

        
    }
}
