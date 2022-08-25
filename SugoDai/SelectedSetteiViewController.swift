//
//  SelectedSetteiViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/08/23.
//

import UIKit

class SelectedSetteiViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    var UD: UserDefaults = UserDefaults.standard
    
    var Label: Int!

    override func viewDidLoad() {
        
//        Label = UD.object(forKey: "label") as? Int
//
//        print(Label!)
//
//        if Label == 1 {
//            label1.text = UD.object(forKey: "text") as? String
//        } else if Label == 2 {
//            label2.text = UD.object(forKey: "text") as? String
//        } else if Label == 3 {
//            label3.text = UD.object(forKey: "text") as? String
//        } else if Label == 4 {
//            label4.text = UD.object(forKey: "text") as? String
//        }
//
//        if (Label == 2 || Label == 3 || Label == 4) { ///Label=1では無い時
//            label1.text = UD.object(forKey: "label1") as? String
//        } else  if (Label == 1 || Label == 3 || Label == 4) { ///Label=2では無い時
//            label2.text = UD.object(forKey: "label2") as? String
//        } else  if (Label == 2 || Label == 1 || Label == 4) { ///Label=3では無い時
//            label3.text = UD.object(forKey: "label3") as? String
//        } else  if (Label == 2 || Label == 3 || Label == 1) { ///Label=4では無い時
//            label4.text = UD.object(forKey: "label4") as? String
//        }
//
//        print(label2.text!)
//        print(label3.text!)
//
        
        
//        label1.text = UD.object(forKey: "label1") as? String
//        print(label1.text!)
//        label2.text = UD.object(forKey: "label2") as? String
//        label3.text = UD.object(forKey: "label3") as? String
//        label4.text = UD.object(forKey: "label4") as? String
        
        //初期値の場合
        label1.text = UD.object(forKey: "label1") as? String
        label2.text = UD.object(forKey: "label2") as? String
        label3.text = UD.object(forKey: "label3") as? String
        label4.text = UD.object(forKey: "label4") as? String
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
//        label1.text = UD.object(forKey: "label1") as? String
//        print(label1.text!)
//        label2.text = UD.object(forKey: "label2") as? String
//        label3.text = UD.object(forKey: "label3") as? String
//        label4.text = UD.object(forKey: "label4") as? String
        
//        Label = UD.object(forKey: "label") as? Int
//
//        if Label == 1 {
//            label1.text = UD.object(forKey: "text") as? String
//        } else if Label == 2 {
//            label2.text = UD.object(forKey: "text") as? String
//        } else if Label == 3 {
//            label3.text = UD.object(forKey: "text") as? String
//        } else if Label == 4 {
//            label4.text = UD.object(forKey: "text") as? String
//        }
//
//        if (Label == 2 || Label == 3 || Label == 4) {
//            label1.text = UD.object(forKey: "label1") as? String
//        } else  if (Label == 1 || Label == 3 || Label == 4) {
//            label2.text = UD.object(forKey: "label2") as? String
//        } else  if (Label == 2 || Label == 1 || Label == 4) {
//            label3.text = UD.object(forKey: "label3") as? String
//        } else  if (Label == 2 || Label == 3 || Label == 1) {
//            label4.text = UD.object(forKey: "label4") as? String
//        }
        
    }
    
    @IBAction func label() {
        UD.set(1, forKey: "label")
    }
    @IBAction func label11() {
        UD.set(2, forKey: "label")
    }
    @IBAction func label22() {
        UD.set(3, forKey: "label")
    }
    @IBAction func label33() {
        UD.set(4, forKey: "label")
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
