//
//  ViewController.swift
//  AnimationMoveApp
//
//  Created by Kisu on 2023-03-15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 3.0, delay: 1.0, usingSpringWithDamping: 1.5, initialSpringVelocity: 0.5, options: [.repeat, .autoreverse], animations: {
            self.myLabel.center.x += self.view.bounds.width
            self.myTextField.center.x += self.view.bounds.width
            self.myImageView.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 2.0, delay: 0.0,
        options: [.repeat, .autoreverse], animations: {
               self.myLabel.alpha = 0.0
               self.myLabel.backgroundColor = UIColor.lightGray
        }, completion: nil)
        
        func viewWillAppear(_ animated: Bool) {
            myLabel.center.x += view.bounds.width
            myTextField.center.x += view.bounds.width
            myImageView.center.x += view.bounds.width
        }
    }
}
