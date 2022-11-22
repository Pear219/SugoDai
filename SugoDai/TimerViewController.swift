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
    
    @IBOutlet var end: UILabel!
    
    //いまたまってるすたんぷのかず。さいしょは0。
    var countkoma: Int = 0
    
    var str = ""
    
    var strr = ""
    
    var count1: Int!
    var count2: Int!
    
    var total: Int = 0
    var section: Int = 0
    var nangyou: Int = 0
    var amarinokazu: Int = 0
    
    var timer: Timer = Timer()
    
    var susumukoma = ""
    
    let saveData: UserDefaults = UserDefaults.standard
    
    var UD: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        start.text = "START"
        
        
        
        jikan.text = UD.object(forKey: "hour")as? String
        hunn.text = UD.object(forKey: "minute")as? String
        
        str = jikan.text!
        strr = hunn.text!

        count1 =  Int(str) 
        count2 = Int(strr)
        
        end.isHidden = true
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func timerr() {
        if !timer.isValid { ////タイマーが動作していない時
            if start.text == "START" { ///タイマーが動いていないかつSTOPの状態になっている時
                start.text = "STOP"
                timer = Timer.scheduledTimer(timeInterval: 1,
                                            target: self,
                                            selector: #selector(down),
                                            userInfo: nil,
                                            repeats: true)
            }
        } else if timer.isValid {
            if start.text == "STOP"{  ///タイマーが動いているかつユーザーが止めたい時
                timer.invalidate()
                start.text = "START"
            } else if start.text == "START" { ///タイマーが動いているかつこのまま続けたい場合
                start.text = "STOP"
                timer = Timer.scheduledTimer(timeInterval: 1,
                                            target: self,
                                            selector: #selector(down),
                                            userInfo: nil,
                                            repeats: true)
            }
        }
    }
    
    @objc func down() {
        if count2 > 0  { ///秒が0じゃなかった(例：1とか2とか)
            count2 = count2 - 1
            hunn.text = String(count2)
        }  else if count2 == 0 {  ///秒がきっちり0になった
            if count1 == 0 {///秒も分も両方とも0になった時
                timer.invalidate()
                hunn.text = String(count2)
                jikan.text = String(count1)
                end.isHidden = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [self] in ///0.5秒待つ
                    //すたんぷがいっこふえる！
//                    self.countkoma = self.countkoma + Int(str)!
//                    saveData.set(countkoma, forKey: "countkoma")//9.18メモ
                    if let goukeisuu = saveData.object(forKey:"total") { ///今までの数を出している
                        total = goukeisuu as! Int
                        //totalは今までの進んだ数
                    } else {
                        
                    }
                    total = total + Int(str)!
                    //合算した
                    section = total/3
                    if total > 5 {
                        nangyou = section/5
                        section = section - 5 * nangyou
                    } //sectionは何行表示させるか
                    amarinokazu = total%3
                    saveData.set(section, forKey: "section")
                    saveData.set(amarinokazu, forKey: "amarinokazu")
                    saveData.set(total, forKey: "total")
                    
                    print("timerの分は\(str)")
    //                        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "Koma1") as! Koma1ViewController
                    
                       // self.navigationController?.pushViewController(nextView, animated: true)
                    //navigationをけして、tabbarしはいかまでいって、うつる！
//                    self.present(nextView, animated: true, completion: nil)
                    self.navigationController?.popToRootViewController(animated: true)
                    navigationController?.setNavigationBarHidden(false, animated: false)
                    
                }
                
            }
            else if count1 > 0 { ///秒が0になったが、分の方はまだ０になっていない場合
                count1 = count1 - 1
                count2 = 59
                hunn.text = String(count2)
                jikan.text = String(count1)
            }
        }
    }    

}
