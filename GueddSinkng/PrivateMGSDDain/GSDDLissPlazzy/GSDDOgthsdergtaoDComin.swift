//
//  GSDDOgthsdergtaoDComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

/// 他人中心
class GSDDOgthsdergtaoDComin: GSDDUserilcomine {
    var plazDeinGSDD:GSDDAbountUserinfo
    init(plazDeinGSDD: GSDDAbountUserinfo) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    @IBOutlet weak var statusRelati: UIButton!
    
    
    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    //举报拉嘿
    @IBAction func GSddRepPoprationNoing(_ sender: UIButton) {
      
        self.showBlockOrReportAlert(targeGSDDIUID: plazDeinGSDD.gsddUID)
        
    }
    
    
    
    //chat
    @IBAction func  touggleChatinginger() {
        self.navigationController?.pushViewController(GSDDCsatminein.init(plazDeinGSDD: self.plazDeinGSDD), animated: true)
    }

    
    //vide
    @IBAction func  touggleVIdeoinger() {
        self.navigationController?.pushViewController(GSDDCVioloiominein.init(plazDeinGSDD: self.plazDeinGSDD), animated: true)
    }
    
    
    @IBOutlet weak var sizeGSDDUserpIC: UIImageView!
    
    @IBOutlet weak var nameingjhtinhGSDD: UILabel!
    
    
    @IBOutlet weak var flollweingcDGSDD: UILabel!
    
    
    @IBOutlet weak var fanveweingcDGSDD: UILabel!
    
    @IBOutlet weak var PlaingGSDD: UIButton!
    
    
    
    //播放
    @IBAction func PlaingerGSDD(_ sender: UIButton) {
        self.navigationController?.pushViewController(GSDDPlazdegtaoDComin.init(plazDeinGSDD: self.plazDeinGSDD), animated: true)
    }
    
    
    //关注
    @IBAction func statusRelationGSDD(_ sender: UIButton) {
        
        
        let loadinftext = AppDelegate.descBABAString(upcaseGS: "liorakdiitnzgn.u.e.")
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loadinftext)
        gsdd_loadActiveViw.begin_GSDDAnimating()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
            
        }
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            GSDDEmaillogadComin.follwercertListGSDD.append(plazDeinGSDD)
        }else{
            GSDDEmaillogadComin.follwercertListGSDD = GSDDEmaillogadComin.follwercertListGSDD.filter({ uise in
                uise.gsddUID != plazDeinGSDD.gsddUID
            })
        }
        
    }
    
    
    @IBOutlet weak var userbituefg: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sizeGSDDUserpIC.image = UIImage(named: plazDeinGSDD.gsddPIav)
        
        flollweingcDGSDD.text = "\(Int.random(in: 0...5))"
        fanveweingcDGSDD.text = "\(Int.random(in: 1...5))"
        nameingjhtinhGSDD.text = plazDeinGSDD.gsddNjmet
        
        statusRelati.layer.cornerRadius  = 21
        statusRelati.layer.masksToBounds = true
        
        userbituefg.text = plazDeinGSDD.gsddVBrief
        statusRelati.layer.borderWidth = 1.5
        statusRelati.layer.borderColor = UIColor(red: 0.08, green: 0.96, blue: 0.99, alpha: 1).cgColor
        
        
        
        if   GSDDEmaillogadComin.follwercertListGSDD.filter({ uise in
            uise.gsddUID == plazDeinGSDD.gsddUID
        }).count > 0{
            self.statusRelati.isSelected = true
        }
        
        
        sizeGSDDUserpIC.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(300.y_GSDD)
        }
        
        if self.plazDeinGSDD.gsddPodermp4path == nil {
            PlaingGSDD.isUserInteractionEnabled = false
            PlaingGSDD.snp.makeConstraints { make in
                make.width.height.equalTo(160.x_GSDD)
                make.centerX.equalToSuperview().inset(16)
            }
            PlaingGSDD.setImage(UIImage.init(named: "noshingDataGSDD"), for: .normal)
           
        }else{
            PlaingGSDD.snp.makeConstraints { make in
                make.width.height.equalTo(160.x_GSDD)
                make.leading.equalToSuperview().inset(16)
            }
            PlaingGSDD.setBackgroundImage(UIImage.init(named: plazDeinGSDD.gsddPoderCover ?? ""), for: .normal)
           
            
        }
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        
    }

   

}
extension GSDDWeahingAllComin{
    
    func dramaiopeInputGSDD()  {
        let laingung = UIImageView(image: UIImage.init(named: "launiconBeg"))
        laingung.contentMode = .scaleAspectFill
        view.addSubview(laingung)
        laingung.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
    }
    
    
}

