//
//  TalentSingShowcase.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit
extension AcousticRiddle{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        singAlongFun()
        
        
        
        othiehtico.contentMode = .scaleAspectFill
        othiehtico.image = UIImage(named: "launiconBeg")
       
        let itjugh =  AppDelegate.descBABAString(upcaseGS: "Qdulincskb hLcoog")
        sendPrivateMessageGSDD(itjugh)
        refreshSocialFeed()
        
        getnlocationAuthsFMer()
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        
    }
    func refreshSocialFeed() {
        
        view.addSubview(othiehtico)
        othiehtico.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
    }
    
}
class TalentSingShowcase: UIView {
    let sureGSDDButton = UIButton.init()
    let cancelGSDDButton = UIButton.init()
    let labelhTimeGSDD = UILabel.init()
    
    let maclGSDDButton = UIImageView(image:UIImage(named: "toGSDDMac"))
    
    let staimgbagc = UIImageView(image: UIImage.init(named: "resultrecordBkio"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sureGSDDButton.setImage(UIImage.init(named: "sureRecordGSDD"), for: .normal)
        cancelGSDDButton.setImage(UIImage.init(named: "cancelRecordGSDD"), for: .normal)
        
        labelhTimeGSDD.text = AppDelegate.descBABAString(upcaseGS: "0t0l:o0k0v:f0d0")
        labelhTimeGSDD.textColor = .white
        labelhTimeGSDD.textAlignment = .center
        labelhTimeGSDD.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        staimgbagc.contentMode = .scaleAspectFill
        self.addSubview(staimgbagc)
        self.addSubview(sureGSDDButton)
        self.addSubview(cancelGSDDButton)
        self.addSubview(maclGSDDButton)
        
        self.addSubview(labelhTimeGSDD)
        staimgbagc.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        sureGSDDButton.snp.makeConstraints { make in
            make.width.height.equalTo(35)
            make.right.equalToSuperview().inset(35)
            make.centerY.equalToSuperview()
        }
        
        cancelGSDDButton.snp.makeConstraints { make in
            make.width.height.equalTo(35)
            make.left.equalToSuperview().inset(35)
            make.centerY.equalToSuperview()
        }
        
        maclGSDDButton.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-25 - 30)
        }
        
        labelhTimeGSDD.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(maclGSDDButton.snp.top).offset(-15)
        }
        
        startShinkAnnation()
        
        
    }
    
    
    func startShinkAnnation()  {
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse, .repeat, .allowUserInteraction], animations: {
            self.staimgbagc.alpha = 0.99
           
            self.maclGSDDButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }) { _ in
            self.staimgbagc.alpha = 1
           
            self.maclGSDDButton.transform = CGAffineTransform.identity
           
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
}
