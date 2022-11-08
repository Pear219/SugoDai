//
//  Koma1ViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/02/02.
//

import UIKit

class Koma1ViewController: UIViewController{
    
    var komasuu: Int = 0
    var amarinokazu: Int = 0
    
    var susumukazu: Int = 0
    
    var nangyou: Int = 0
    
    var section: Int = 0

    
    
    let saveData: UserDefaults = UserDefaults.standard
    
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

//
//        collection.dataSource = self
//
        //count2 = saveData.object(forKey: "hunn") as? Int
        
        
    }
    
   
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width:100, height: 170)
        collection.collectionViewLayout = layout
        layout.itemSize = CGSize(width:self.view.frame.width/4, height:self.view.frame.height/6)
        layout.sectionInset = UIEdgeInsets(top: 10,left: 35,bottom: 3,right: 10)
  
        if let gyou = saveData.object(forKey: "section") {
           section = gyou as! Int
        } else {
            susumukazu = 0
        }
        if let amari = saveData.object(forKey: "amarinokazu") {
            amarinokazu = amari as! Int
        } else {
            susumukazu = 0
        }
        if let susumu = saveData.object(forKey: "total") {
            susumukazu = susumu as! Int
        } else {
            susumukazu = 0
        }
        //nilだったらsusumukazuを0にするコードif文
        collection.register(UINib(nibName: "CollectionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collection.reloadData()
    }
        // Do any additional setup after loading the view
        

    
   

    
   
//
//
//
//
//
//    /*
//     // MARK: - Navigation
//
//     // In a storyboard-based application, you will often want to do a little preparation before navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     // Get the new view controller using segue.destination.
//     // Pass the selected object to the new view controller.
//     }
//     */
//}

//extension Koma1ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
//        return 3
//    }
}


extension Koma1ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 5
        }

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
            return 3
        }
//
//
        func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionCollectionViewCell
//
//        //cell.masu?.image = UIImage(named: "マス")
//
//        ///おそらくこれで自分のTableViewの中のCellを呼び出しているIBActionみたいな役割果たしていると思う
//
////        susumukazu = komasuu + susumukazu //結果的に進む数
////            print("結果的に進むのは\(susumukazu)")
////            goukei.set(susumukazu, forKey: "goukei")
//
//        //nangyou = susumukazu * 3
//        //amarinokazu = (susumukazu + komasuu) % 3 //あまり
//
            switch section {
            case 1:
                if indexPath.section == 0 {
                    cell.Koma.image = UIImage(named: "マス")
                }
            case 2:
                if indexPath.section == 1 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 0 {
                    cell.Koma.image = UIImage(named: "マス")
                }
            case 3:
                if indexPath.section == 1 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 0 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 2 {
                    cell.Koma.image = UIImage(named: "マス")
                }
            case 4:
                if indexPath.section == 1 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 0 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 2 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 3 {
                    cell.Koma.image = UIImage(named: "マス")
                }

            case 0: //全てがピッタリとは限らない
                if amarinokazu == 0 {
                if indexPath.section == 1 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 0 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 2 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 3 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 4 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                }
                if amarinokazu == 1 {
                }
                if amarinokazu == 2 {
                    if indexPath.section == 0 {
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }

            case 5:
                if amarinokazu == 0 {
                if indexPath.section == 0 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 1 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 2 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                if indexPath.section == 3 {
                    cell.Koma.image = UIImage(named: "マス")
                }
                } else {

                }
                    default:
                        break
            }

            print("行の部分表示OK")

            switch susumukazu {//割り切れない時用/例外の時用
            case 1:
                if indexPath.section == 0 {
                    if indexPath.row == 0 {
                        cell.Koma.image = UIImage(named: "マス3")
                    }
                }
            case 2:
                if indexPath.section == 0 {
                    if indexPath.row == 1 {
                        cell.Koma.image = UIImage(named: "マス3")
                    }
                    if indexPath.row == 0 {
                        cell.Koma.image = UIImage(named: "マス")
                    }
                }
            case 3:
                if indexPath.section == 0 {
                    if indexPath.row == 2 {
                        cell.Koma.image = UIImage(named: "マス3")
                    }
                    if indexPath.row == 0 {
                        cell.Koma.image = UIImage(named: "マス")
                    }
                    if indexPath.row == 1 {
                        cell.Koma.image = UIImage(named: "マス")
                    }
                }
            case 0: //まだ何マスも進んでいなかったとき
                if indexPath.section == 0 {
                    cell.Koma.image = UIImage(named: "コマ影あり")
                }
                if indexPath.section == 1 {
                    cell.Koma.image = UIImage(named: "コマ影あり")
                }
                if indexPath.section == 2 {
                    cell.Koma.image = UIImage(named: "コマ影あり")
                }
                if indexPath.section == 3 {
                    cell.Koma.image = UIImage(named: "コマ影あり")
                }
                if indexPath.section == 4 {
                    cell.Koma.image = UIImage(named: "コマ影あり")
                }
                
                

            default:
                break
            }


            switch amarinokazu {
            case 1:
                print("あまり1")
    
                 if self.section == 0 { //1
                    if indexPath.section == 0 {
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                    }
                 }
                if self.section == 1 { //4
                    if indexPath.section == 1 {
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス3")
                            print("4")
                        }
                    }
                }
                if self.section == 2 {
                    if indexPath.section == 2 {
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                    }

                }
                if self.section == 3 {
                    if indexPath.section == 3 {
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                    }
                }
                if self.section == 4 {
                    if indexPath.section == 4 {
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                    }
                }
                if self.section == 5 {
                    if indexPath.section == 0 {
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                    }
                }
            case 2:
                print("あまりの2")
                if self.section == 0 {//2
                    if indexPath.section == 0 {
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if self.section == 1 {//5
                    if indexPath.section == 1 {
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if self.section == 2 {//8
                    if indexPath.section == 2 {
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }

                }
                if self.section == 3 {//11
                    if indexPath.section == 3 {
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if self.section == 4 {//14
                    if indexPath.section == 4 {
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                    if self.section == 5 {//17
                        if indexPath.section == 0 {
                            if indexPath.row == 1 {
                                cell.Koma.image = UIImage(named: "マス3")
                            }
                            if indexPath.row == 0 {
                                cell.Koma.image = UIImage(named: "マス")
                            }
                        }
                    }
            case 0:
                print("あまりの数0")
                if self.section == 1 { //3
                    if indexPath.section == 0 {
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if self.section == 2 { //6
                    if indexPath.section == 1 {
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                        print("correct")
                    }
                }
                if self.section == 3 { //9
                    if indexPath.section == 2 {
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if self.section == 4 { //12
                    if indexPath.section == 3 {
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス3")
                        }
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if self.section == 5 { //15
                    if indexPath.section == 4 {
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス3")
                            print("correct")
                        }
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if self.section == 0 {
                    if indexPath.section == 4 {
                        if indexPath.row == 2 {
                            cell.Koma.image = UIImage(named: "マス3")
                            print("correct")
                        }
                        if indexPath.row == 0 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                        if indexPath.row == 1 {
                            cell.Koma.image = UIImage(named: "マス")
                        }
                    }
                }
                if susumukazu == 0 {
                    if indexPath.section == 0 {
                        cell.Koma.image = UIImage(named: "コマ影あり")
                    }
                    if indexPath.section == 1 {
                        cell.Koma.image = UIImage(named: "コマ影あり")
                    }
                    if indexPath.section == 2 {
                        cell.Koma.image = UIImage(named: "コマ影あり")
                    }
                    if indexPath.section == 3 {
                        cell.Koma.image = UIImage(named: "コマ影あり")
                    }
                    if indexPath.section == 4 {
                        cell.Koma.image = UIImage(named: "コマ影あり")
                    }
                }
                
                
            default:
                break
            }
        return cell
    }
    
    
    


}





