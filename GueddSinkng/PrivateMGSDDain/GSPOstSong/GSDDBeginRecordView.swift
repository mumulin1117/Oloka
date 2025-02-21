//
//  GSDDBeginRecordView.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/21.
//

import UIKit

class GSDDBeginRecordView: UIView {
    let sureGSDDButton = UIButton.init()
    let cancelGSDDButton = UIButton.init()
    
    let maclGSDDButton = UIImageView(image:UIImage(named: "toGSDDMac"))
    
    let staimgbagc = UIImageView(image: UIImage.init(named: "resultrecordBkio"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sureGSDDButton.setImage(UIImage.init(named: "sureRecordGSDD"), for: .normal)
        cancelGSDDButton.setImage(UIImage.init(named: "cancelRecordGSDD"), for: .normal)
        
        
        
        staimgbagc.contentMode = .scaleAspectFill
        self.addSubview(staimgbagc)
        self.addSubview(sureGSDDButton)
        self.addSubview(cancelGSDDButton)
        self.addSubview(maclGSDDButton)
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
        fatalError("init(coder:) has not been implemented")
    }
    
}
