//
//  PickerViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/01/26.
//

import UIKit

class PickerViewController: UIViewController, UITextFieldDelegate {
    
//    @IBOutlet var TextField: UITextField!
//    @IBOutlet var TextField1: UITextField!
    
    @IBOutlet var picker: UIDatePicker!
    
    @IBOutlet var start: UIButton!
    
    var hour: String!
    var minute: String!
    
    var UD: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        
//        TextField.delegate = self
//
//        TextField1.delegate = self
        
        hidesBottomBarWhenPushed = true

        super.viewDidLoad()
        
        start.layer.cornerRadius = 10
        start.layer.shadowRadius = 3
        start.layer.shadowOpacity = 0.1
        start.layer.shadowColor = UIColor.black.cgColor
        start.layer.shadowOffset = CGSize(width: 2, height: 2)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didChangeValue(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "H"
        
        let formatterr = DateFormatter()
        formatterr.dateFormat = "m"
        
        hour = formatter.string(from: picker.date)
        minute = formatterr.string(from: picker.date)
        
    }
    
    @IBAction func save() {
        UD.set(hour, forKey: "hour")
        UD.set(minute, forKey: "minute")
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//                if segue.identifier == "toNext" {
//                    let nextView = segue.destination as! TimerViewController
//                    nextView.strr = TextField1.text!
//                    nextView.str = TextField.text!
//                }
        
       
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




