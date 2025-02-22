//
//  GSDDCsatminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit
//chat
class GSDDCsatminein: UIViewController {
    var plazDeinGSDD:GSDDAbountUserinfo
    init(plazDeinGSDD: GSDDAbountUserinfo) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
  
    @IBOutlet weak var gsddOploip: UITextField!
    
   
    
    @IBOutlet weak var sizeGSDDUserpIC: UIImageView!
    
    @IBOutlet weak var nameingjhtinhGSDD: UILabel!
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameingjhtinhGSDD.text = plazDeinGSDD.gsddNjmet
        sizeGSDDUserpIC.image = UIImage(named: plazDeinGSDD.gsddPIav)
    }

    //举报拉嘿
    @IBAction func GSddRepPoprationNoing(_ sender: UIButton) {
        
        
    }
    
    
    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    //vide
    @IBAction func  touggleVIdeoinger() {
        self.navigationController?.pushViewController(GSDDCVioloiominein.init(plazDeinGSDD: self.plazDeinGSDD), animated: true)
    }
    
    //seng
    @IBAction func postmeaasge(_ sender: UIButton) {
    }
    
}
