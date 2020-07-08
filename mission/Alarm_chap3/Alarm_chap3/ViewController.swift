//
//  ViewController.swift
//  Alarm_chap3
//
//  Created by youngho on 2020/07/08.
//  Copyright © 2020 YogHo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var alarmTime: String?
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var selectTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        selectTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime(){
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        currentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "hh:mm aaa"
        let nowTime = formatter.string(from: date as Date)
        
        if(alarmTime == nowTime){
            view.backgroundColor = UIColor.red
        }
        else{
            view.backgroundColor = UIColor.white
        }
    }
}

