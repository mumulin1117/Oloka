//
//  GSDDCVioloiominein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class GSDDCVioloiominein: GSDDUserilcomine {
    
    var plazDeinGSDD:GSDDAbountUserinfo
    
    init(plazDeinGSDD: GSDDAbountUserinfo) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var sizeGSDDUserpIC: UIImageView!
    
    @IBOutlet weak var nameingjhtinhGSDD: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameingjhtinhGSDD.text = plazDeinGSDD.gsddNjmet
        sizeGSDDUserpIC.image = UIImage(named: plazDeinGSDD.gsddPIav)
    }

    //举报拉嘿
    @IBAction func GSddRepPoprationNoing(_ sender: UIButton) {
        self.showBlockOrReportAlert(targetUserName: plazDeinGSDD.gsddUID)
        
    }
    
    
    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func GSddRepPothweyuing(_ sender: UIButton) {
        
        
    }

}
