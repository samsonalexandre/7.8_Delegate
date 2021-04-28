//
//  InOrangeViewController.swift
//  7.8
//
//  Created by Alexandre Samson on 31.03.21.
//

protocol InChangeColor {
    func setInColor(color: UIColor)
}

import UIKit

class InOrangeViewController: UIViewController {
    
    func setInColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    
   
    var inDelegate: InChangeColor?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func inOrangeGreen(_ sender: Any) {
        inDelegate?.setInColor(color: .green)
    }
    
    
    @IBAction func inOrangeGelb(_ sender: Any) {
        inDelegate?.setInColor(color: .yellow)
    }
    
    @IBAction func inOrangePurpurn(_ sender: Any) {
        inDelegate?.setInColor(color: .purple)
    }
    
}
