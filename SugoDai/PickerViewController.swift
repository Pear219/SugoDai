//
//  PickerViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/01/26.
//

import UIKit

class PickerViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var TextField: UITextField!
    @IBOutlet var TextField1: UITextField!
    
    var str: Int!
    
    var strr: Int!

    override func viewDidLoad() {
        
        TextField.delegate = self
        
        TextField1.delegate = self
        
        hidesBottomBarWhenPushed = true
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "toNext" {
                    let nextView = segue.destination as! TimerViewController
                    nextView.strr = TextField1.text!
                    nextView.str = TextField.text!
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
}





