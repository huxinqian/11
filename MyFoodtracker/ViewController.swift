//
//  ViewController.swift
//  MyFoodtracker
//
//  Created by student on 2018/12/5.
//  Copyright © 2018年 2016110314. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        mealNameLabel.text = textField.text
    }
    @IBAction func setDefalutLabelText(_ sender: Any) {
        mealNameLabel.text = "Defalut Text"
    }
}

