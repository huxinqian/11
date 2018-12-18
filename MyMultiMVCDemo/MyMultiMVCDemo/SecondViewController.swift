//
//  SecondViewController.swift
//  MyMultiMVCDemo
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 2016110314. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var name = ""
    var pwd = ""
    
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var fPasswd: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fName.text = name
        fPasswd.text = pwd
        
        // Do any additional setup after loading the view.
    }
    
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        name = fName.text!
        pwd = fPasswd.text!
        
     }

}
