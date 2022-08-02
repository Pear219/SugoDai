//
//  Koma2ViewController.swift
//  SugoDai
//
//  Created by 加藤 on 2022/02/08.
//

import UIKit

class Koma2ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet var Koma16: UIImageView!
    @IBOutlet var Koma17: UIImageView!
    @IBOutlet var Koma18: UIImageView!
    @IBOutlet var Koma19: UIImageView!
    @IBOutlet var Koma20: UIImageView!
    @IBOutlet var Koma21: UIImageView!
    @IBOutlet var Koma22: UIImageView!
    @IBOutlet var Koma23: UIImageView!
    @IBOutlet var Koma24: UIImageView!
    @IBOutlet var Koma25: UIImageView!
    @IBOutlet var Koma26: UIImageView!
    @IBOutlet var Koma27: UIImageView!
    @IBOutlet var Koma28: UIImageView!
    @IBOutlet var Koma29: UIImageView!
    @IBOutlet var Koma30: UIImageView!

    let saveData: UserDefaults = UserDefaults.standard
    
    let goukei: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "CollectionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")

        // Do any additional setup after loading the view.
    }
    
//extension Koma2ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//        
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
//    }
//        
//        return cell
//}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
