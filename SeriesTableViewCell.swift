//
//  SeriesTableViewCell.swift
//  CollectionViewInsideTableViewCell
//
//  Created by hardik aghera on 14/08/18.
//  Copyright © 2018 hardikaghera2306. All rights reserved.
//

import UIKit

class SeriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var seriesCollectionView: UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
