//
//  KyukeijikanViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/03/08.
//

import UIKit

class KyukeijikanViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var TextField: UITextField!
    @IBOutlet var TextField1: UITextField!

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
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
