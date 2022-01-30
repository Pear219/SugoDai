//
//  TimerViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/01/26.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet var jikan: UILabel!
    @IBOutlet var hunn: UILabel!
    
    @IBOutlet var start: UILabel!
    
    var str = ""
    var strr = ""

    override func viewDidLoad() {
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        jikan.text = str
        
        hunn.text = strr
        
        

        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func timer() {
        
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
