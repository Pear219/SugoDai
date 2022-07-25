//
//  Koma1ViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/02/02.
//

import UIKit

class Koma1ViewController: UIViewController{
    
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
    
    var komasuu: Int = 0
    //komasuu=受け取ったやつ
    var amarinokazu: Int = 0
    
    var susumukazu: Int = 0
    
    var nangyou: Int = 0
    
        
//    var count2: Int!
//
//    var doko: Int!

    
    
    let saveData: UserDefaults = UserDefaults.standard
    //saveDataはkomasuu＝その時にやった分だけしか進めない 奴が入っている
    
    let goukei: UserDefaults = UserDefaults.standard
    
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {

//        collection.delegate = self
//        collection.dataSource = self
//
        //count2 = saveData.object(forKey: "hunn") as? Int
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width:100 , height: 100)
        layout.sectionInset = UIEdgeInsets(top: 25,left: 15,bottom: 25,right: 15)
        collection.collectionViewLayout = layout
        
        komasuu = saveData.object(forKey: "countkoma") as! Int
        ///komasuuはTimerから値渡しされたもの。現段階ではやった分だけ(○分)だけ進むようになった！！
        susumukazu = goukei.object(forKey: "goukei") as! Int
        print("値渡しされた数は\(susumukazu)")
        super.viewDidLoad()
        collection.register(UINib(nibName: "CollectionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        // Do any additional setup after loading the view
    }
    

    
    //func collectionView(_ collectonView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    //let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
//extension Koma1ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
//        func numberOfSections(in collectionView: UICollectionView) -> Int {
//            return 5
//        }
//
//        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
//            return 3
//        }
//
//        func collectionView(_ collectionView: UICollectionView,
//                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionCollectionViewCell
//
//        //cell.masu?.image = UIImage(named: "マス")
//
//        ///おそらくこれで自分のTableViewの中のCellを呼び出しているIBActionみたいな役割果たしていると思う
//        ///
//        susumukazu = komasuu + susumukazu //結果的に進む数
//        nangyou = susumukazu * 3
//        amarinokazu = (susumukazu + komasuu) % 3 //あまり
//        if susumukazu <= 2 {
//            if susumukazu == 1{
//                if indexPath.row  == 1 {
//                    cell.Koma.image = UIImage(named: "マス")
//                }
//            } else if susumukazu == 2 {
//                if indexPath.row == 2 {
//                    cell.Koma.image = UIImage(named: "マス")
//                }
//            }
//        } else if susumukazu == 2 {
//            if amarinokazu == 0 {
//
//            } else if amarinokazu == 1 {
//
//            }else if amarinokazu == 2 {
//
//            }
//        } else if susumukazu == 3 {
//            if amarinokazu == 0 {
//
//            } else if amarinokazu == 1{
//
//            } else if amarinokazu == 2 {
//
//            }
//
//        } else if susumukazu == 4 {
//            if amarinokazu == 0 {
//
//            } else if amarinokazu == 1{
//
//            } else if amarinokazu == 2{
//
//            }
//
//        } else if susumukazu == 5 {
//
//            if amarinokazu == 0 {
//
//            } else if amarinokazu == 1{
//
//            } else if amarinokazu == 2 {
//
//            }
//
//        } else if susumukazu > 5 {
//
//        }
//
//        return cell
//    }
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
   
        func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionCollectionViewCell
        
        //cell.masu?.image = UIImage(named: "マス")
        
        ///おそらくこれで自分のTableViewの中のCellを呼び出しているIBActionみたいな役割果たしていると思う
        
        susumukazu = komasuu + susumukazu //結果的に進む数
            print("結果的に進むのは\(susumukazu)")
            goukei.set(susumukazu, forKey: "goukei")
        nangyou = susumukazu * 3
        amarinokazu = (susumukazu + komasuu) % 3 //あまり
        if susumukazu <= 2 {
            if susumukazu == 1 {
                if indexPath.row == 0 {
                    if indexPath.row == 0 {
                        cell.Koma.image = UIImage(named: "マス")
                }
                }
            } else if susumukazu == 2 {
                if indexPath.row == 1 {
                    cell.Koma.image = UIImage(named: "マス")
                }
            }
        } else if susumukazu == 2 {
            if amarinokazu == 0 {
                
            } else if amarinokazu == 1 {
                
            }else if amarinokazu == 2 {
            
            }
        } else if susumukazu == 3 {
            if amarinokazu == 0 {
                
            } else if amarinokazu == 1{
                
            } else if amarinokazu == 2 {
                
            }
            
        } else if susumukazu == 4 {
            if amarinokazu == 0 {
                
            } else if amarinokazu == 1{
                
            } else if amarinokazu == 2{
                
            }
            
        } else if susumukazu == 5 {
            
            if amarinokazu == 0 {
                
            } else if amarinokazu == 1{
                
            } else if amarinokazu == 2 {
                
            }
            
        } else if susumukazu > 5 {
                
        }
        
        return cell
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
