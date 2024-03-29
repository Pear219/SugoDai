//
//  NoficationViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/11/08.
//

import UIKit

class NoficationViewController: UIViewController {
    
    @IBOutlet var enter: UIButton!
    @IBOutlet var picker: UIDatePicker!
    
    var saveData: UserDefaults = UserDefaults.standard
    
    let date: Date = Date()
    
    var timer: String!
    var timerr: String!
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        enter.layer.cornerRadius = 10
        enter.layer.shadowRadius = 3
        enter.layer.shadowOpacity = 0.1
        enter.layer.shadowColor = UIColor.black.cgColor
        enter.layer.shadowOffset = CGSize(width: 2, height: 2)
    }
    
    @IBAction func didValueChangedDatePicker(_ sender: UIDatePicker) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        
        let formatterr = DateFormatter()
        formatterr.dateFormat = "mm"
        
        timer = formatter.string(from: picker.date) as String
        timerr = formatterr.string(from: picker.date) as String
        
        print("通知時間変更", timer as Any , timerr as Any)
    }
    
    @IBAction func time() {
        saveData.set(timer, forKey: "timer")
        saveData.set(timerr, forKey: "timerr")
        
        let content = UNMutableNotificationContent()
        content.title = "運動の時間になりました"
        content.body = "今日も頑張りましょう"
        content.sound = UNNotificationSound.default
        
        let triggerHour = Int(timer) ?? 0
        let triggerMinute = Int(timerr) ?? 0
        
        var dateComponets = DateComponents()
        dateComponets.hour = triggerHour
        dateComponets.minute = triggerMinute
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponets, repeats: false)
        
        let request = UNNotificationRequest(identifier: "uniqueIdentifer", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { (error) in
            if let error = error {
                print("通知の登録に失敗しました")
            } else {
                print("通知がセットされました")
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
