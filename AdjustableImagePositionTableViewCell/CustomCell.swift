//
//  CustomCell.swift
//  AdjustableImagePositionTableViewCell
//
//  Created by Jeff Schmitz on 6/3/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    var imageView1: UIImageView!
    var imageView2: UIImageView!
    var imageView3: UIImageView!
    var imageView4: UIImageView!
    
    var cars: [Car]?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imageView1 = UIImageView(frame: CGRectZero)
        contentView.addSubview(imageView1)
        
        imageView2 = UIImageView(frame: CGRectZero)
        contentView.addSubview(imageView2)

        imageView3 = UIImageView(frame: CGRectZero)
        contentView.addSubview(imageView3)

        imageView4 = UIImageView(frame: CGRectZero)
        contentView.addSubview(imageView4)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView1.frame = CGRectMake(0, 0, 70, 70)
        imageView1.image = cars![0].image
        
        imageView2.frame = CGRectMake(70, 0, 70, 70)
        imageView2.image = cars![1].image
        
        imageView3.frame = CGRectMake(140, 0, 70, 70)
        imageView3.image = cars![2].image
        
        imageView4.frame = CGRectMake(210, 0, 70, 70)
        imageView4.image = cars![3].image
        
    }

}
