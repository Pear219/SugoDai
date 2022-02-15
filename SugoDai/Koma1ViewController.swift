//
//  Koma1ViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/02/02.
//

import UIKit

class Koma1ViewController: UIViewController {
    
    @IBOutlet var Koma1: UIImageView!
    @IBOutlet var Koma2: UIImageView!
    @IBOutlet var Koma3: UIImageView!
    @IBOutlet var Koma4: UIImageView!
    @IBOutlet var Koma5: UIImageView!
    @IBOutlet var Koma6: UIImageView!
    @IBOutlet var Koma7: UIImageView!
    @IBOutlet var Koma8: UIImageView!
    @IBOutlet var Koma9: UIImageView!
    @IBOutlet var Koma10: UIImageView!
    @IBOutlet var Koma11: UIImageView!
    @IBOutlet var Koma12: UIImageView!
    @IBOutlet var Koma13: UIImageView!
    @IBOutlet var Koma14: UIImageView!
    @IBOutlet var Koma15: UIImageView!
    
    var timernokoma: UITextView!
    
    var saveData: UserDefaults = UserDefaults.standard
    
   

    override func viewDidLoad() {
        
        timernokoma.text = saveData.object(forKey: "timer") as? String
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
