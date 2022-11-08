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
        
        //初期値の場合
        label1.text = UD.object(forKey: "label1") as? String
        label2.text = UD.object(forKey: "label2") as? String
        label3.text = UD.object(forKey: "label3") as? String
        label4.text = UD.object(forKey: "label4") as? String
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
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
