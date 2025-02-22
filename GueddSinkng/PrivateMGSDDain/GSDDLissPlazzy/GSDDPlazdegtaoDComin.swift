//
//  GSDDPlazdegtaoDComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class GSDDPlazdegtaoDComin: UIViewController {
    
    @IBOutlet weak var ReporitgnVieoGSDD: UIButton!
    
    @IBOutlet weak var vioklNamenGSDD: UILabel!//
    
    
    @IBOutlet weak var zanGSDD: UIButton!
    
    
    @IBOutlet weak var videokoCoverGSDD: UIImageView!
    
    @IBOutlet weak var lplayrtyGSDD: UIButton!
    
    
    @IBOutlet weak var poinusericonGSDD: UIImageView!
    
    @IBOutlet weak var useringNAmeGS: UILabel!
    
    @IBOutlet weak var videghuContenGS: UILabel!
    
   
    var plazDeinGSDD:GSDDAbountUserinfo
    init(plazDeinGSDD: GSDDAbountUserinfo) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videokoCoverGSDD.layer.cornerRadius = 22
        videokoCoverGSDD.layer.masksToBounds = true
        
        poinusericonGSDD.layer.cornerRadius = 25
        poinusericonGSDD.layer.masksToBounds = true
        
        
        videokoCoverGSDD.image = UIImage.init(named:plazDeinGSDD.gsddPIav )
        
        vioklNamenGSDD.text =  plazDeinGSDD.gussMusicname
        videghuContenGS.text =  plazDeinGSDD.gsddPodercontentext
        
        poinusericonGSDD.image = UIImage(named:plazDeinGSDD.gsddPIav )
        useringNAmeGS.text = plazDeinGSDD.gsddNjmet
        
    }


   

}
