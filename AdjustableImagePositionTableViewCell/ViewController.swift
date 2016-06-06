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
    var carsData: [Car]?
    
    
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
        cell.cars = carsData!
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
//        loadAllCarData()
        loadFirstThirdFourthCarData()
//        loadFirstSecondFourthCarData()
//        loadSecondThirdFourthCarData()
    }

    private func loadAllCarData() {
        
        var carName = "Ferrari"
        carsData = [Car(name: carName, image: UIImage(named: carName)!, hidden: false)]
        
        carName = "BMW"
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
        
        carName = "Mitsubishi"
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
        
        carName = "Lambo"
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
        
        
    }
    
    private func loadFirstThirdFourthCarData() {
        
        var carName = getRandomCarName()
        carsData = [Car(name: carName, image: UIImage(named: carName)!, hidden: false)]
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
    }
    
    private func loadFirstSecondFourthCarData() {
        
        var carName = getRandomCarName()
        carsData = [Car(name: carName, image: UIImage(named: carName)!, hidden: false)]
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: true))
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
    }
    
    private func loadSecondThirdFourthCarData() {
        
        var carName = getRandomCarName()
        carsData = [Car(name: carName, image: UIImage(named: carName)!, hidden: true)]
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
        
        carName = getRandomCarName()
        carsData?.append(Car(name: carName, image: UIImage(named: carName)!, hidden: false))
    }
    
}
