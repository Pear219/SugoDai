//
//  Koma1ViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/02/02.
//

import UIKit

class Koma1ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
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

    var count2: Int!
    
    var doko: Int!
    
    var byou = ""
    var hunn = ""
    
    
//    let saveData: UserDefaults = UserDefaults.standard
    
    @IBOutlet weak var collection: UICollectionView!
    
    
    override func viewDidLoad() {

        collection.delegate = self
        collection.dataSource = self
        
        //count2 = saveData.object(forKey: "hunn") as? Int
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width:100 , height: 100)
        layout.sectionInset = UIEdgeInsets(top: 25,left: 15,bottom: 25,right: 15)
        collection.collectionViewLayout = layout
        
//        str = saveData.object(forKey: "hunn") as? Int
//        strr = saveData.object(forKey: "byou") as? Int
        
   

        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 3
    }
    
    //func collectionView(_ collectonView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    //let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
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
