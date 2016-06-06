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
//    var tupleTableData: [(String, UIImage, Bool)]? = nil
    var tupleTableData: [Car]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerClass(CustomCell.self, forCellReuseIdentifier: NSStringFromClass(CustomCell))
        
        loadSampleData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.tableData.count
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        let cell = tableView.dequeueReusableCellWithIdentifier(NSStringFromClass(CustomCell), forIndexPath: indexPath) as! CustomCell
        cell.cars = tupleTableData!
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row) selected")
    }
    
    private func getRandomCarName() -> String {
        let result = tableData[Int(arc4random() % 4)]
        return result
    }
    
    private func loadSampleData() {
        loadAllCarData()
//        loadFirstThirdFourthCarData()
//        loadFirstSecondFourthCarData()
//        loadSecondThirdFourthCarData()
    }

    private func loadAllCarData() {
        
        var carName = "Ferrari"
        tupleTableData = [Car(name: carName, image: UIImage(named: carName)!, hidden: true)]
        
        carName = "BMW"
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = "Mitsubishi"
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = "Lambo"
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        
    }
    
    private func loadFirstThirdFourthCarData() {
        
        var carName = getRandomCarName()
        tupleTableData = [Car(name: carName, image: UIImage(named: carName)!, hidden: true)]
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
    }
    
    private func loadFirstSecondFourthCarData() {
        
        var carName = getRandomCarName()
        tupleTableData = [Car(name: carName, image: UIImage(named: carName)!, hidden: true)]
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
    }
    
    private func loadSecondThirdFourthCarData() {
        
        var carName = getRandomCarName()
        tupleTableData = [Car(name: carName, image: UIImage(named: carName)!, hidden: true)]
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        tupleTableData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
    }
    
}
