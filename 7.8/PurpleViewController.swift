//
//  PurpleViewController.swift
//  7.8
//
//  Created by Alexandre Samson on 28.03.21.
//

import UIKit

class PurpleViewController: UIViewController, ChangeColor {
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    
    func setColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    func setColorName(colorName: String) {
        purpleLabel.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DreiTastenViewController, segue.identifier == "ShowDreiButton" {
            vc.delegate = self
        }
    }

    @IBOutlet weak var purpleLabel: UILabel!
    
    @IBAction func purpleButton(_ sender: Any) {
    }
}
