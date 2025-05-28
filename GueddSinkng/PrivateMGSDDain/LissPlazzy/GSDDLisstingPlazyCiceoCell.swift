//
//  GSDDLisstingPlazyCiceoCell.swift
//  GueddSinkng
//
//  Created by User on 2025/2/21.
//

import UIKit

class GSDDLisstingPlazyCiceoCell: UICollectionViewCell {

    @IBOutlet weak var ReporitgnVieoGSDD: UIButton!
    
    @IBOutlet weak var vioklNamenGSDD: UILabel!//
    
    
    @IBOutlet weak var zanGSDD: UIButton!
    
    
    @IBOutlet weak var PuzzleFun: UIImageView!
    
    @IBOutlet weak var liaortyGSDD: UIButton!
    
    
    @IBOutlet weak var poinusericonGSDD: UIImageView!
    
    @IBOutlet weak var useringNAmeGS: UILabel!
    
    @IBOutlet weak var videghuContenGS: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        PuzzleFun.layer.cornerRadius = 22
        PuzzleFun.layer.masksToBounds = true
        
        poinusericonGSDD.layer.cornerRadius = 25
        poinusericonGSDD.layer.masksToBounds = true
        
    }

}
extension GSDDAluncherComin{
    
    func balalaXSmallMajic()  {
        let sillerico = UIImageView(image: UIImage.init(named: "launiconBeg"))
        sillerico.contentMode = .scaleAspectFill
        sillerico.image = UIImage(named: "launiconBeg")
        view.addSubview(sillerico)
        sillerico.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
    }
}
