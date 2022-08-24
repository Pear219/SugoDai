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
    
    var label: Int!
    
    override func viewDidLoad() {
//
//        label = UD.object(forKey: "label") as? Int
//
//        if label == 1 {
//            label1.text = UD.object(forKey: "text") as? String
//        } else if label == 2 {
//            label2.text = UD.object(forKey: "text") as? String
//        } else if label == 3 {
//            label3.text = UD.object(forKey: "text") as? String
//        } else if label == 4 {
//            label4.text = UD.object(forKey: "text") as? String
//        }
//
//        if (label == 2 || label == 3 || label == 4 ) {
//            label1.text = UD.object(forKey: "label1") as? String
//        } else if  (label == 1 || label == 3 || label == 4 ) {
//            label2.text = UD.object(forKey: "label2") as? String
//        } else if (label == 1 || label == 2 || label == 4 ) {
//            label3.text = UD.object(forKey: "label3") as? String
//        } else if (label == 1 || label == 2 || label == 3 ) {
//            label4.text = UD.object(forKey: "label4") as? String
//        } else {
//            label1.text = UD.object(forKey: "label1") as? String
//            label2.text = UD.object(forKey: "label2") as? String
//            label3.text = UD.object(forKey: "label3") as? String
//            label4.text = UD.object(forKey: "label4") as? String
//        }
//
//
//        UD.set(label1.text, forKey: "label1")
//        UD.set(label2.text, forKey: "label2")
//        UD.set(label3.text, forKey: "label3")
//        UD.set(label4.text, forKey: "label4")
//
//    print(label1.text!)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        label = UD.object(forKey: "label") as? Int
        
        if label == 1 {
            label1.text = UD.object(forKey: "text") as? String
        } else if label == 2 {
            label2.text = UD.object(forKey: "text") as? String
        } else if label == 3 {
            label3.text = UD.object(forKey: "text") as? String
        } else if label == 4 {
            label4.text = UD.object(forKey: "text") as? String
        }
        
        if (label == 2 || label == 3 || label == 4 ) {
            label1.text = UD.object(forKey: "label1") as? String
        } else if  (label == 1 || label == 3 || label == 4 ) {
            label2.text = UD.object(forKey: "label2") as? String
        } else if (label == 1 || label == 2 || label == 4 ) {
            label3.text = UD.object(forKey: "label3") as? String
        } else if (label == 1 || label == 2 || label == 3 ) {
            label4.text = UD.object(forKey: "label4") as? String
        } else {
            label1.text = UD.object(forKey: "label1") as? String
            label2.text = UD.object(forKey: "label2") as? String
            label3.text = UD.object(forKey: "label3") as? String
            label4.text = UD.object(forKey: "label4") as? String
        }
        
        
        UD.set(label1.text, forKey: "label1")
        UD.set(label2.text, forKey: "label2")
        UD.set(label3.text, forKey: "label3")
        UD.set(label4.text, forKey: "label4")
        
    print(label1.text!)
        
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
