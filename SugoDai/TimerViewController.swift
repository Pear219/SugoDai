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
    
    var str: Int!
    
    var strr = ""
    
    var count1: Int!
    var count2: Int!
    
    var total: Int = 0
    var section: Int = 0
    var nangyou: Int = 0
    var amarinokazu: Int = 0
    
    var timer: Timer = Timer()
    
    var susumukoma = ""
    
    var time: Int = 0
    
    var tm: Int = 0
    
    let saveData: UserDefaults = UserDefaults.standard
    
    var UD: UserDefaults = UserDefaults.standard
    
    var dictionary: [String:Int] = [:] //空のdictionary
    
//    var today: Date = Date()
    
    let dateformatter = DateFormatter()
    
//    dateformatter.timeZone = TimeZone.current
//    dateformatter.dateFormat = "yyyy/MM/dd"
//
    var today: String!
    
    var alreadytime: Int!
    
    override func viewDidLoad() {
        
        dateformatter.timeZone = TimeZone.current
        dateformatter.dateFormat = "yyyy/MM/dd"
        today = dateformatter.string(from:Date())
        
        
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        start.text = "START"
        
        
        
        if let hour = UD.object(forKey: "hour") as? String, !hour.isEmpty {
            jikan.text = hour
            print("わわわ",hour)
        } else {
            jikan.text = String(time)
            print("nil判定")
        }
//        if let gyou = saveData.object(forKey: "section") {
//           section = gyou as! Int
//        } else {
//            susumukazu = 0
//        }
        if let minute = UD.object(forKey: "minute") as? String, !minute.isEmpty {
            
            hunn.text = minute
        } else {
            print(time)
            hunn.text = String(time)
            print("nil判定")
        }
        
        hunn.text = UD.object(forKey: "minute")as? String
        
        str = Int(jikan.text!)
        strr = hunn.text ?? String(0)
       
        

        count1 =  Int(str) 
        count2 = Int(strr)
        
        end.isHidden = true
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (saveData.object(forKey: "dateData") != nil) {
            dictionary = saveData.object(forKey: "dateData") as! [String : Int]
        } else {
            
        }
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
                print("で、keyの中身は",today!)
                print("で、keyは",dictionary)
                print(dictionary.keys.contains(today))
                if dictionary.keys.contains(today) { //既にその日に運動をしていた場合, todayが既にあるかどうか確認
//                        if strr == nil {
//                        } else {
//                            intstrr = Int(strr)
//                            intstrr  = intalreadytime + intstrr //今までのやつと新しくやったものを合算する
//                        }
//                    } else {
//
//                    }
                    print("sport", saveData.object(forKey: "sportstime"))
                    if saveData.object(forKey: "sportstime") != nil {
                        alreadytime = saveData.object(forKey: "sportstime") as? Int
                        print("alreadytimeは,", alreadytime)
                        if alreadytime != nil {
                            alreadytime = str + alreadytime //三度目以上,この時点でintになっていたい
                            print("3度目でs")
                        } else {
                            alreadytime = str //二度目
                            print("二度目です")
                        }
                        saveData.set(alreadytime, forKey: "sportstime")
                        print("橋二度目", alreadytime)
                    } else {
                        
                    }
                    //alreadytimeから以前までやっていた時間を取り出して今やった時間と合わせる→setしてchartsに送っている
                } else { //初めてその日に運動をする場合
                    print("今日初めての運動!!!")
                    saveData.set(today, forKey: "today") //日付を登録
                    saveData.set(Int(str), forKey: "sportstime") //運動した時間を登録
                    dictionary[today] = count2
                    saveData.set(dictionary, forKey: "dateData")
                    print("しんきとうろく", dictionary, str)
                    if let keyyy = dictionary.first(where: { $0.value == count2 })?.key {
                        print("値の所在地は",keyyy) // "apple"
                    }
                }
                timer.invalidate()
                hunn.text = String(count2)
                jikan.text = String(count1)
                end.isHidden = false
                saveData.set(count2, forKey: "count2") //時間をグラフの方に
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [self] in ///0.5秒待つ
                    if let goukeisuu = saveData.object(forKey:"total") { ///今までの数を出している
                        total = goukeisuu as! Int
                        //totalは今までの進んだ数
                    } else {
                        
                    }
                    total = total + str
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
