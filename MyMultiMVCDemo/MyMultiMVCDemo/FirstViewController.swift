//
//  ViewController.swift
//  MyMultiMVCDemo
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 2016110314. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var fPasswd: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Second"{
            let secVC = segue.destination as! SecondViewController
            secVC.name = fName.text!
            secVC.pwd = fPasswd.text!
            
//            //store to file
//            userDefault.set(fName.text!, forKey: "name")
//            userDefault.set(fPasswd.text!, forKey: "pwd")
//            userDefault.synchronize()
//
//            print(NSTemporaryDirectory())
        }
    }
    
    @IBAction func myback(segue:UIStoryboardSegue) {
        let secVC = segue.source as! SecondViewController
        fName.text = secVC.name
        fPasswd.text = secVC.pwd
    }

}

