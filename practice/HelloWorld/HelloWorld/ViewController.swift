//
//  ViewController.swift
//  HelloWorld
//
//  Created by youngho on 2020/07/07.
//  Copyright © 2020 YogHo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
}

