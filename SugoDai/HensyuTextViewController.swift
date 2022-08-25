//
//  HensyuTextViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/02/15.
//

import UIKit

class HensyuTextViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var HensyuTextView: UITextField!
    
    @IBOutlet var text: UITextField!
    
    var UD: UserDefaults = UserDefaults.standard
    
    var label: Int! ///SeletedSetteiで何番目のボタンを押したのか(どれを変更したいのか)

    override func viewDidLoad() {
        
        label = UD.object(forKey: "label") as? Int
        
        
        HensyuTextView.delegate = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        HensyuTextView.resignFirstResponder()
        return true
    }
    
    @IBAction func save() {
        print("押された")
//        UD.set(HensyuTextView.text, forKey: "text")
        
        if label == 1 {
            UD.set(HensyuTextView.text, forKey: "label1")
        } else if label == 2 {
            UD.set(HensyuTextView.text, forKey: "label2")
        } else if label == 3 {
            UD.set(HensyuTextView.text, forKey: "label3")
        } else if label == 4 {
            UD.set(HensyuTextView.text, forKey: "label4")
        }
        
        performSegue(withIdentifier: "toNext", sender: nil)
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
