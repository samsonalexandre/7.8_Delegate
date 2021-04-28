//
//  DreiTastenViewController.swift
//  7.8
//
//  Created by Alexandre Samson on 28.03.21.
//

protocol ChangeColor {
    func setColor(color: UIColor)
    func setColorName(colorName: String)
}

import UIKit

class DreiTastenViewController: UIViewController {
    
    var delegate: ChangeColor?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBOutlet weak var dreiTastenTextField: UITextField!
    
    
    @IBAction func greenButton(_ sender: Any) {
        delegate?.setColor(color: .green)
        dreiTastenTextField.text = "Выбран зелёный"
        delegate?.setColorName(colorName: dreiTastenTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func blueButton(_ sender: Any) {
        delegate?.setColor(color: .blue)
        dreiTastenTextField.text = "Выбран синий"
        delegate?.setColorName(colorName: dreiTastenTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func redButton(_ sender: Any) {
        delegate?.setColor(color: .red)
        dreiTastenTextField.text = "Выбран красный"
        delegate?.setColorName(colorName: dreiTastenTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
