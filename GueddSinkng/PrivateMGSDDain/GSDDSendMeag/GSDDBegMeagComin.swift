//
//  GSDDBegMeagComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit
import WebKit

class GSDDBegMeagComin: UIViewController {
    private let nameringGSDD = UIImageView(image: UIImage.init(named: "mengbanGSDD"))
    let CaomingInager = UIImageView(image: UIImage.init(named: "noshingDataGSDD"))
    let emionext = UILabel.init()
    override func viewDidLoad() {
        super.viewDidLoad()

       
        //背景
        
       
        view.addSubview(nameringGSDD)
        
        
        //backutton
        let bagcloGSDD = UIButton.init(frame: CGRect.init(x:18, y: framtipStartinset, width: 30, height: 30))
    
       
        bagcloGSDD.addTarget(self, action: #selector(bagerinOkayot), for: .touchUpInside)
    
        view.addSubview(bagcloGSDD)
        
        
        
        
        emionext.text = AppDelegate.descBABAString(upcaseGS: "Mtejsmsbaigye")
       
        
        view.addSubview(emionext)
        emionext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(bagcloGSDD)
        }
        screat()
        
        emionext.textColor = .white
        bagcloGSDD.setBackgroundImage(UIImage.init(named: "backDSGG"), for: .normal)
        emionext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
    }
    
    
    func screat()  {
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

extension GSDDWeahingAllComin{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
       
        feedGSDD?.isHidden = false
        
        self.gsdd_loadActiveViw.end_GSDDAnimating()
       
        let iasd = AppDelegate.descBABAString(upcaseGS: "Lvoigaibnu mscufchcbensrsrfhukl")
        if isGSDD == true {
            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: iasd)
            
            isGSDD = false
            
        }
//        let pushTokeng =  UserDefaults.standard.object(forKey: "PushTokenGSDD") ?? ""
        
        reacount += 1
        if reacount < 1 {
            return
        }
        

        reacount += 1
        if reacount < 1 {
            return
        }
        GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( "/octave/aiVocal/identityY", inputGSDD: JsonfnKeyINg())
       
    }
    
}

