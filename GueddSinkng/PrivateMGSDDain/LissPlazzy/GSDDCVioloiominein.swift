//
//  GSDDCVioloiominein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class GSDDCVioloiominein: GSDDUserilcomine {
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    var plazDeinGSDD:GSDDAbountUserinfo
    
    init(plazDeinGSDD: GSDDAbountUserinfo) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    @IBOutlet weak var mineUseringGSDDD: UIImageView!
    
    @IBOutlet weak var sizeGSDDUserpIC: UIImageView!
    
    @IBOutlet weak var nameingjhtinhGSDD: UILabel!
    
    @IBOutlet weak var stausConntLablGD: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mineUseringGSDDD.image = GSDDEmaillogadComin.logUserImageIcon
        mineUseringGSDDD.layer.cornerRadius = 33
        mineUseringGSDDD.layer.masksToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameingjhtinhGSDD.text = plazDeinGSDD.gsddNjmet
        
        
        sizeGSDDUserpIC.image = UIImage(named: plazDeinGSDD.gsddPIav)
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse, .repeat, .allowUserInteraction], animations: {
            self.stausConntLablGD.alpha = 0.5
            self.stausConntLablGD.layer.opacity = 0.8
            self.stausConntLablGD.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { _ in
            self.stausConntLablGD.alpha = 1
            self.stausConntLablGD.layer.opacity = 1
            self.stausConntLablGD.transform = CGAffineTransform.identity
           
        }
        
        let loadinftext = AppDelegate.descBABAString(upcaseGS: "Scosrxrdyv,xTphsep cuksleird yysofup kdpicamlmemdk zidsm ynkootc joynvliipnnec!")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 8, execute: DispatchWorkItem(block: {
            self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: loadinftext)
        }))
    }

    //举报拉嘿
    @IBAction func GSddRepPoprationNoing(_ sender: UIButton) {
        self.showBlockOrReportAlert(targeGSDDIUID: plazDeinGSDD.gsddUID)
        
    }
    
    
    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func GSddRepPothweyuing(_ sender: UIButton) {
        
        gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: AppDelegate.descBABAString(upcaseGS:"Tkhleb a cpshcofnoey ridsz inyojto gcooondnsegcwtqeodv qymeltx,b cphleecadshen gtmrnyq margwayivnr tlmawtmefrh!"))
        
    }

}
