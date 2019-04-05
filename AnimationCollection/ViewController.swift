//
//  ViewController.swift
//  AnimationCollection
//
//  Created by Qaptive Technologies on 05/04/19.
//  Copyright © 2019 Qaptive Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgToAnimate: UIImageView!
    @IBOutlet weak var animateAction: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBAction func animateAction(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            print("IsSelected")
          //  rotateView(targetView: imgToAnimate, duration: 2.0)
            UIView.animate(withDuration: 0.5, animations: {
                self.imgToAnimate.transform = CGAffineTransform(rotationAngle: .pi )
                print("Degree = \(CGFloat.pi)")
            })
        } else {
             print("IsDeselected")
            UIView.animate(withDuration: 0.5, animations: {
                self.imgToAnimate.transform = CGAffineTransform(rotationAngle: -2 * .pi )
                print("RevDegree = \(-2 * CGFloat.pi)")
            })
         //   rotateView(targetView: imgToAnimate, duration: 2.0)
            //rotateLeft()
        }
        
        
    }
    
    func rotateLeft() {
        UIView.animate(withDuration: 0.5, animations: {
           // self.imgToAnimate.transform = CGAffineTransform(rotationAngle: ((180.0 * .pi) / 180.0) * -1)
            self.imgToAnimate.transform = CGAffineTransform(rotationAngle: ((0.0 * .pi) / 360.0) )
            self.view.layoutIfNeeded()
        })
    }
    
    func rotateView(targetView: UIImageView, duration: Double = 1.0) {
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            targetView.transform = targetView.transform.rotated(by: .pi)
        }) { finished in
            self.rotateView(targetView: targetView, duration: duration)
        }
    }
}

