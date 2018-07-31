//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Amr Omran on 07/22/2018.
//  Copyright © 2018 Amr Omran. All rights reserved.
//

import UIKit

class SwipeGesture: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageList: Array<UIImage> = [UIImage(named: "nature")!, UIImage(named: "road")!, UIImage(named: "trees")!, UIImage(named: "way")!]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeHandler(_:)))
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeHandler(_:)))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(touchHandler(_:)))
        
        swipeLeft.direction = .left
        swipeRight.direction = .right

        imageView.isUserInteractionEnabled = true
        
        imageView.addGestureRecognizer(swipeLeft)
        imageView.addGestureRecognizer(swipeRight)
        imageView.addGestureRecognizer(tapGesture)
        
        imageView.image = imageList[0]
        
    }
    
    
    @objc func swipeHandler(_ gestureRecognizer: UISwipeGestureRecognizer) {
        
        
        switch gestureRecognizer.direction {
        
        case UISwipeGestureRecognizerDirection.right:
        
            imageList.forEach {
                imageView.image = $0
            }
        
        case UISwipeGestureRecognizerDirection.left:
            
            imageList.reversed().forEach {
                imageView.image = $0
            }
       
        default:
            print("default")
        }
    }
    
   
    
    
    @objc func touchHandler(_ tapRecognizer: UITapGestureRecognizer) {
        print("Tapped")
    }
    



}

