//
//  GSDDBegMeagComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit

class GSDDBegMeagComin: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        //背景
        let nameringGSDD = UIImageView(image: UIImage.init(named: "mengbanGSDD"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
        view.addSubview(nameringGSDD)
        
        
        //backutton
        let bagcloGSDD = UIButton.init(frame: CGRect.init(x:18, y: framtipStartinset, width: 30, height: 30))
        bagcloGSDD.setBackgroundImage(UIImage.init(named: "backDSGG"), for: .normal)
       
        bagcloGSDD.addTarget(self, action: #selector(bagerinOkayot), for: .touchUpInside)
    
        view.addSubview(bagcloGSDD)
        
        
        
        let emionext = UILabel.init()
        emionext.text = "Message"
        emionext.textColor = .white
        emionext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.addSubview(emionext)
        emionext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(bagcloGSDD)
        }
        
        
        let CaomingInager = UIImageView(image: UIImage.init(named: "noshingDataGSDD"))
        
        view.addSubview(CaomingInager)
        CaomingInager.snp.makeConstraints { make in
            make.width.equalTo(156.x_GSDD)
            make.height.equalTo(175.x_GSDD)
            make.center.equalToSuperview()
        }
    }
    

    @objc  func bagerinOkayot() {
        self.navigationController?.popViewController(animated: true)
    }

}
