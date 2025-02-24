//
//  GSDDUserPauioell.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/24.
//

import UIKit

class GSDDUserPauioell: UICollectionViewCell {

    @IBOutlet weak var GEtinoginh: UIButton!
    
    
    @IBOutlet weak var speengdgGSDD: UILabel!
    
    
    @IBOutlet weak var atolldiomendGSDD: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        GEtinoginh.layer.cornerRadius = 17
        GEtinoginh.layer.masksToBounds = true
    }

}
