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
    
    var nextXPosition: CGFloat = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView1.frame = CGRectMake(nextXPosition, 0, 70, 70)
        imageView1.image = cars![0].image
        if let hidden = cars![0].hidden {
            if hidden {
                imageView1.image = nil
            }
        }
        nextXPosition = nextXPosition + imageView1.frame.width
        print("nextXPosition: \(nextXPosition)")

        
        imageView2.frame = CGRectMake(nextXPosition, 0, 70, 70)
        imageView2.image = cars![1].image
        if let hidden = cars![1].hidden {
            if hidden {
                imageView2.image = nil
            }
        }
        nextXPosition = nextXPosition + imageView2.frame.width
        print("nextXPosition: \(nextXPosition)")

        
        imageView3.frame = CGRectMake(nextXPosition, 0, 70, 70)
        imageView3.image = cars![2].image
        if let hidden = cars![2].hidden {
            if hidden {
                imageView3.image = nil
            
            }
        }
        nextXPosition = nextXPosition + imageView3.frame.width
        print("nextXPosition: \(nextXPosition)")
        
        
        imageView4.frame = CGRectMake(nextXPosition, 0, 70, 70)
        imageView4.image = cars![3].image
        if let hidden = cars![3].hidden {
            if hidden {
                imageView4.image = nil
            
            }
        }
        nextXPosition = nextXPosition + imageView4.frame.width
        print("nextXPosition: \(nextXPosition)")
        
    }

}
