//
//  OrangeViewController.swift
//  7.8
//
//  Created by Alexandre Samson on 31.03.21.
//


import UIKit

class OrangeViewController: UIViewController, InChangeColor {
    
    var containerVC: InOrangeViewController?
    
    
    func setInColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func orangeGreen(_ sender: Any) {
        containerVC?.view.backgroundColor = UIColor.green
    }
    
    @IBAction func orangeGelb(_ sender: Any) {
        containerVC?.view.backgroundColor = UIColor.yellow
    }
    
    
    @IBAction func orangePurpurn(_ sender: Any) {
        containerVC?.view.backgroundColor = UIColor.purple
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? InOrangeViewController, segue.identifier == "ShowInOrange" {
            vc.inDelegate = self
            self.containerVC = vc
        }
    }
   
    
}
