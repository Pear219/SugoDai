//
//  HensyuTextViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/02/15.
//

import UIKit

class HensyuTextViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var HensyuTextView: UITextField!

    override func viewDidLoad() {
        
        HensyuTextView.delegate = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        HensyuTextView.resignFirstResponder()
        return true
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
