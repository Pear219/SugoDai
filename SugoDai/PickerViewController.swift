//
//  PickerViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/01/26.
//

import UIKit

class PickerViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var start: UIButton!

    var hour: Int!
    var minute: Int!
    
    var UD: UserDefaults = UserDefaults.standard
    
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!

    override func viewDidLoad() {
        hidesBottomBarWhenPushed = true

        super.viewDidLoad()
        
        start.layer.cornerRadius = 10
        start.layer.shadowRadius = 3
        start.layer.shadowOpacity = 0.1
        start.layer.shadowColor = UIColor.black.cgColor
        start.layer.shadowOffset = CGSize(width: 2, height: 2)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save() {
        UD.set(textField1.text, forKey: "hour")
        UD.set(textField2.text, forKey: "minute")
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




