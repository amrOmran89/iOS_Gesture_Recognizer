//
//  PanGesture.swift
//  GestureRecognizer
//
//  Created by Amr Omran on 07/22/2018.
//  Copyright © 2018 Amr Omran. All rights reserved.
//

import UIKit

class PanGesture: UIViewController {

    @IBOutlet weak var panView: UIView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        panView.layer.cornerRadius = panView.bounds.width / 2
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panHandler(_:)))
        
        panView.addGestureRecognizer(panGesture)
        
    }


    @objc func panHandler(_ panRecognizer: UIPanGestureRecognizer) {
        
        let touchLocation: CGPoint = panRecognizer.location(in: self.view)
        panView.center = touchLocation
        
        print(panRecognizer.velocity(in: self.view))
    }

}












