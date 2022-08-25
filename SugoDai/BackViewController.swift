//
//  BackViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/08/24.
//

import UIKit

class BackViewController: UIViewController {
    
    @IBOutlet var back: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backk() {
        print("戻る")
        self.navigationController?.popToRootViewController(animated: true)
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
