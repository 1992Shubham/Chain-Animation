//
//  ViewController.swift
//  ChainAniamate
//
//  Created by SHUBHAM AGARWAL on 09/03/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl1.isHidden = true
        lbl2.isHidden = true
        lbl3.isHidden = true
        lbl4.isHidden = true

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        tapGesture.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(tapGesture)
        
        let removeGesture = UITapGestureRecognizer(target: self, action: #selector(on))
        removeGesture.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(removeGesture)
    }
    
    @objc
    func on() {
        lbl1.isHidden = true
        lbl2.isHidden = true
        lbl3.isHidden = true
        lbl4.isHidden = true
        self.lbl1.transform = CGAffineTransform.identity
        self.lbl2.transform = CGAffineTransform.identity
        self.lbl3.transform = CGAffineTransform.identity
        self.lbl4.transform = CGAffineTransform.identity
    }
    
    @objc
    func onClickView() {
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.lbl1.isHidden = false
            self.lbl1.transform = CGAffineTransform(translationX: 0, y: -120)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.lbl2.isHidden = false
                self.lbl2.transform = CGAffineTransform(translationX: 0, y: -90)
            }, completion: { (_) in
                UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
                    self.lbl3.isHidden = false
                    self.lbl3.transform = CGAffineTransform(translationX: 0, y: -60)
                }, completion: { (_) in
                    UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
                        self.lbl4.isHidden = false
                        self.lbl4.transform = CGAffineTransform(translationX: 0, y: -30)
                    }, completion: nil)
                })
            })
            
        }
        
    }
    
    
}

