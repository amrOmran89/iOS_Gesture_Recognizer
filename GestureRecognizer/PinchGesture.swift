//
//  PinchGesture.swift
//  GestureRecognizer
//
//  Created by Amr Omran on 07/22/2018.
//  Copyright © 2018 Amr Omran. All rights reserved.
//

import UIKit

class PinchGesture: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchHandler(_:)))
        
        imageView.image = UIImage(named: "trees")
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(pinchGesture)
    }

    @objc func pinchHandler(_ pinchRecognizer: UIPinchGestureRecognizer) {
        imageView.transform = CGAffineTransform.init(scaleX: pinchRecognizer.scale, y: pinchRecognizer.scale)
    }

}
