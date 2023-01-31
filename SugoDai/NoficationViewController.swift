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
    }
    
    @IBAction func didValueChangedDatePicker(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        
        let formatterr = DateFormatter()
        formatterr.dateFormat = "mm"
        
        timer = formatter.string(from: picker.date)
        timerr = formatterr.string(from: picker.date)
        
        print("入力した",timer as Any)
    }
    
    @IBAction func time() {
        saveData.set(timer, forKey: "timer")
        saveData.set(timerr, forKey: "timerr")
        
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
