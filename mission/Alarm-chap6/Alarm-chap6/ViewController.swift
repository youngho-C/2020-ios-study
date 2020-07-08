//
//  ViewController.swift
//  Alarm-chap6
//
//  Created by youngho on 2020/07/09.
//  Copyright © 2020 YogHo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timer: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var alarmTime: String?
    
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var selectTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timer, userInfo: nil, repeats: true)
    }
    
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "YYYY-MM-dd HH:mm:ss EEE"
        currentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "hh:mm aaa"
        var nowTime = formatter.string(from: date as Date)
        if(nowTime == alarmTime){
            let alarmAlert = UIAlertController(title: "알림", message: "설정한 시간입니다!!!", preferredStyle: UIAlertController.Style.alert)
            let alarmAction = UIAlertAction(title: "네,알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            alarmAlert.addAction(alarmAction)
            present(alarmAlert,animated: true, completion: nil)
        }
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let date = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd HH:mm:ss EEE"
        selectTime.text = "선택시간: " + formatter.string(from: date.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: date.date)
    }
    
}

