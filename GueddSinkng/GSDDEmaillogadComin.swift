//
//  GSDDEmaillogadComin.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/19.
//

import UIKit

class GSDDEmaillogadComin: UIViewController {

    let emialDGSS = UITextField.init()
    let passwordlDGSS = UITextField.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //背景
        let nameringGSDD = UIImageView(image: UIImage.init(named: "loginiONfGSDD"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
        view.addSubview(nameringGSDD)
        
        
        //backutton
        let bagcloGSDD = UIButton.init(frame: CGRect.init(x:18, y: framtipStartinset, width: 30, height: 30))
        bagcloGSDD.setBackgroundImage(UIImage.init(named: "backDSGG"), for: .normal)
       
        bagcloGSDD.addTarget(self, action: #selector(bagerinOkayot), for: .touchUpInside)
    
        view.addSubview(bagcloGSDD)
        
        
        //titlet
        let welGSDD = UIImageView(image: UIImage.init(named: "WelcomDGSS Login"))
        welGSDD.contentMode = .scaleToFill
        view.addSubview(welGSDD)
        welGSDD.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bagcloGSDD.snp.bottom).offset(27)
            make.width.equalTo(186)
            make.height.equalTo(26)
        }
        
        //namelet
        let nameGSDD = UIImageView(image: UIImage.init(named: "OlokaTitlek"))
        nameGSDD.contentMode = .scaleAspectFit
        view.addSubview(nameGSDD)
        nameGSDD.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welGSDD.snp.bottom).offset(2)
            make.width.equalTo(126)
            make.height.equalTo(70)
        }
        
        let emialIconbg = UIView()
        emialIconbg.backgroundColor = UIColor(red: 0.72, green: 0.4, blue: 1, alpha: 1)
        emialIconbg.layer.cornerRadius = 10
        emialIconbg.layer.masksToBounds = true
        view.addSubview(emialIconbg)
        emialIconbg.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(nameGSDD.snp.bottom).offset(64)
            make.width.equalTo(106)
            make.height.equalTo(60)
        }
        
        
        let epswdalIconbg = UIView()
        epswdalIconbg.backgroundColor = UIColor(red: 0.72, green: 0.4, blue: 1, alpha: 1)
        epswdalIconbg.layer.cornerRadius = 10
        epswdalIconbg.layer.masksToBounds = true
        view.addSubview(epswdalIconbg)
        epswdalIconbg.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(emialIconbg.snp.bottom).offset(85)
            make.width.equalTo(106)
            make.height.equalTo(60)
        }
        
        //login
        let iagreendGSDD = UIButton.init()
       
        iagreendGSDD.setTitle("Login", for: .normal)
        iagreendGSDD.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
        iagreendGSDD.layer.masksToBounds = true
        iagreendGSDD.layer.cornerRadius = 25
        iagreendGSDD.addTarget(self, action: #selector(QuickadNadOkayot), for: .touchUpInside)
        iagreendGSDD.setTitleColor(.black, for: .normal)
        iagreendGSDD.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
       
        view.addSubview(iagreendGSDD)
        iagreendGSDD.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(20)
            make.height.equalTo(55)
            make.top.equalTo(epswdalIconbg.snp.bottom).offset(87)
        }
        
        emialDGSS.textColor = .white
        passwordlDGSS.textColor = .white
        
        passwordlDGSS.placeholder = "Please enter password"
        passwordlDGSS.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        passwordlDGSS.textAlignment = .center
        passwordlDGSS.background  = UIImage.init(named: "texfiledBAck")
        passwordlDGSS.isSecureTextEntry = true
        
        emialDGSS.placeholder = "Please enter email"
        emialDGSS.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        emialDGSS.textAlignment = .center
        emialDGSS.background  = UIImage.init(named: "texfiledBAck")
        
        
        view.addSubview(emialDGSS)
        view.addSubview(passwordlDGSS)
        
        emialDGSS.snp.makeConstraints { make in
            make.left.equalTo(emialIconbg)
            make.top.equalTo(emialIconbg.snp.top).offset(40)
            make.height.equalTo(55)
            make.right.equalToSuperview().inset(20)
        }
        
        passwordlDGSS.snp.makeConstraints { make in
            make.left.equalTo(emialIconbg)
            make.top.equalTo(epswdalIconbg.snp.top).offset(40)
            make.height.equalTo(55)
            make.right.equalToSuperview().inset(20)
        }
        
        let emion = UIImageView(image: UIImage.init(named: "youxiconDGSS"))
        emialIconbg.addSubview(emion)
        emion.snp.makeConstraints { make in
            make.width.height.equalTo(21)
            make.left.top.equalToSuperview().offset(10)
        }
        
        let emionext = UILabel.init()
        emionext.text = "Email"
        emionext.textColor = .white
        emionext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        emialIconbg.addSubview(emionext)
        emionext.snp.makeConstraints { make in
            make.left.equalTo(emion.snp.right).offset(11)
            make.centerY.equalTo(emion)
        }
        
        
        
        let pasweion = UIImageView(image: UIImage.init(named: "pswdonDGSS"))
        epswdalIconbg.addSubview(pasweion)
        pasweion.snp.makeConstraints { make in
            make.width.height.equalTo(21)
            make.left.top.equalToSuperview().offset(10)
        }
        
        let paswernext = UILabel.init()
        paswernext.text = "Password"
        paswernext.textColor = .white
        paswernext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        epswdalIconbg.addSubview(paswernext)
        paswernext.snp.makeConstraints { make in
            make.left.equalTo(pasweion.snp.right).offset(11)
            make.centerY.equalTo(pasweion)
        }
    }
    
    
    
    //log in
    @objc func QuickadNadOkayot()  {
        
    }
    
    
    @objc  func bagerinOkayot() {
        self.navigationController?.popViewController(animated: true)
    }
    

}
