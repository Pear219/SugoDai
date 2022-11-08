//
//  CollectionCollectionViewCell.swift
//  SugoDai
//
//  Created by 加藤 on 2022/07/12.
//

import UIKit

class CollectionCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var Koma: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        Koma.image = UIImage(named: "コマ影あり")
    }
    
//    func setUpContents(image: UIImage) {
//        Koma.image = image
//    }
    
    override func prepareForReuse() {
        super.prepareForReuse()

        Koma.image = UIImage(named: "コマ影あり")
    }

}
