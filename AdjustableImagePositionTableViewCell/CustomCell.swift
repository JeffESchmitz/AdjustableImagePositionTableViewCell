//
//  CustomCell.swift
//  AdjustableImagePositionTableViewCell
//
//  Created by Jeff Schmitz on 6/3/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    var textField1: UITextField!
    var textField2: UITextField!
    var textField3: UITextField!
    var textField4: UITextField!
    
    ///------------
    //Method: Init with Style
    //Purpose:
    //Notes: This will NOT get called unless you call "registerClass, forCellReuseIdentifier" on your tableview
    ///------------
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        //First Call Super
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //Initialize Text Field
        textField1 = UITextField(frame: CGRect(x: 0, y: 9, width: 44.00, height: 44.00));
//        textField1 = UITextField(frame: CGRectZero)
        textField1.backgroundColor = UIColor.redColor()

        textField2 = UITextField(frame: CGRect(x: 80, y: 9, width: 44.00, height: 44.00));
//        textField2 = UITextField(frame: CGRectZero)
        textField2.backgroundColor = UIColor.orangeColor()

        textField3 = UITextField(frame: CGRect(x: 160, y: 9, width: 44.00, height: 44.00));
//        textField3 = UITextField(frame: CGRectZero)
        textField3.backgroundColor = UIColor.purpleColor()

        textField4 = UITextField(frame: CGRect(x: 240, y: 9, width: 44.00, height: 44.00));
//        textField4 = UITextField(frame: CGRectZero)
        textField4.backgroundColor = UIColor.blueColor()

        //Add TextField to SubView
        contentView.addSubview(textField1)
        contentView.addSubview(textField2)
        contentView.addSubview(textField3)
        contentView.addSubview(textField4)
    }
    
    ///------------
    //Method: Init with Coder
    //Purpose:
    //Notes: This function is apparently required; gets called by default if you don't call "registerClass, forCellReuseIdentifier" on your tableview
    ///------------
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        textField1.frame = CGRectMake(0, 9, 44.0, 44.0)
        textField2.frame = CGRectMake(40, 9, 44.0, 44.0)
        textField3.frame = CGRectMake(80, 9, 44.0, 44.0)
        textField4.frame = CGRectMake(120, 9, 44.0, 44.0)
    }
    
}
