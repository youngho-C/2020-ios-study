//
//  ViewController.swift
//  mission_chap2
//
//  Created by youngho on 2020/07/08.
//  Copyright © 2020 YogHo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imgList = ["1.png","2.png","3.png","4.png",
    "5.png","6.png"]
    var idx = 0
    @IBOutlet weak var flowerImg: UIImageView!
    
    var img:UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        img = UIImage(named: imgList[idx])
        
        flowerImg.image = img
    }

    @IBAction func btnPreview(_ sender: UIButton) {
        idx -= 1
        if(idx < 0){
            idx += 6
        }
        img = UIImage(named: imgList[(idx)%6])
        flowerImg.image = img
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        idx += 1
        img = UIImage(named: imgList[(idx)%6])
        flowerImg.image = img
    }
    
}

