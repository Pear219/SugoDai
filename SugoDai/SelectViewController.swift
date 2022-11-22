//
//  SelectViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/01/25.
//

import UIKit

class SelectViewController: UIViewController {
    
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    var UD: UserDefaults = UserDefaults.standard
    var saveData: UserDefaults = UserDefaults.standard
    
    var label: Int!
    
    var hour: Int!
    var minute: Int!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

       
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Do any additional setup after loading the view.
        hour = Int((saveData.object(forKey: "timer") as? String)!)
        minute = Int((saveData.object(forKey: "timerr") as? String)!)
        print(hour!, "awa-")
        
        let content = UNMutableNotificationContent()
        content.title = "ここに通知のタイトル"
        content.body = "ここに通知の本文"
//        let dateComponets = DateComponents(calendar: Calendar.current, timeZone: TimeZone.current, hour: hour, minute: minute)
//        let trigger = UNTimeIntervalNotificationTrigger(init(dateMatching: <#T##DateComponents#>, repeats: <#T##Bool#>): dateComponets, repeats: true)
        let dateComponets = DateComponents(
            calendar: Calendar.current, timeZone: TimeZone.current,  hour: hour, minute: minute)
        let trigger = UNCalendarNotificationTrigger(
        dateMatching: dateComponets, repeats: true)
        let request = UNNotificationRequest(identifier: "notification", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
        
        label1.text = UD.object(forKey: "label1")as? String
        label2.text = UD.object(forKey: "label2")as? String
        label3.text = UD.object(forKey: "label3")as? String
        label4.text = UD.object(forKey: "label4")as? String
        
        
        ///初期値または一度も変更されていなかった場合
        if UD.object(forKey: "label1") != nil {
            
        } else {
            label1.text = "ランニング"
        }
        
        if UD.object(forKey: "label2") != nil {
            
        } else {
            label2.text = "ウォーキング"
        }
        if UD.object(forKey: "label3") != nil {
            
        } else {
            label3.text = "腕立て伏せ"
        }
        if UD.object(forKey: "label4") != nil {
            
        } else {
            label4.text = "ストレッチ"
        }
        
        
        UD.set(label1.text, forKey: "label1")
        UD.set(label2.text, forKey: "label2")
        UD.set(label3.text, forKey: "label3")
        UD.set(label4.text, forKey: "label4")
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
