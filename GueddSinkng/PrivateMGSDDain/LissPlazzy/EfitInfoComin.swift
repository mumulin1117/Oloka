//
//  EfitInfoComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class EfitInfoComin: UIView {
    let usersefimgInager = UIImageView()
  
    
    let bagcloDisapiearGSDD = UIButton.init()
    
    
    let takeiearGSDD = UIButton.init()
    
    let entertYOuNAmeGSDD = UITextField.init()
    let entertYOuBriefGSDD = UITextField.init()
    
    let OKNAmeGSDD = UIButton.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        entertYOuNAmeGSDD.text = DiscoveryHubALoaing.chanGSDD.signinyhuGSDD?.gsddNjmet
        entertYOuBriefGSDD.text = DiscoveryHubALoaing.chanGSDD.signinyhuGSDD?.gsddVBrief
        
       
        
        usersefimgInager.image =  MusicalEmailMindTeaser.logUserImageIcon
        
        entertYOuBriefGSDD.textAlignment = .center
        entertYOuBriefGSDD.textColor = .black
        entertYOuBriefGSDD.backgroundColor = .white
        
        entertYOuNAmeGSDD.textAlignment = .center
        entertYOuNAmeGSDD.textColor = .black
        
         //背景
         let nameringGSDD = UIImageView(image: UIImage.init(named: "coevtGSDDbako"))
        
        self.addSubview(nameringGSDD)
        nameringGSDD.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
         
         //backutton
         
        bagcloDisapiearGSDD.setBackgroundImage(UIImage.init(named: "chiodRfg"), for: .normal)
        self.addSubview(bagcloDisapiearGSDD)
        bagcloDisapiearGSDD.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.trailing.equalToSuperview().inset(16.x_GSDD)
            make.top.equalToSuperview()
        }
         
        
        usersefimgInager.layer.cornerRadius = 90.x_GSDD
        usersefimgInager.layer.masksToBounds = true
        
        usersefimgInager.contentMode = .scaleAspectFill
        self.addSubview(usersefimgInager)
        usersefimgInager.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(180.x_GSDD)
            make.top.equalTo(self.snp.top).offset(32)
            
        }
        
        
        takeiearGSDD.setImage(UIImage.init(named: "daheigrtake"), for: .normal)
        self.addSubview(takeiearGSDD)
        takeiearGSDD.snp.makeConstraints { make in
            make.width.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(usersefimgInager.snp.bottom).offset(-26)
        }
        entertYOuNAmeGSDD.backgroundColor = .white
       
        self.addSubview(entertYOuNAmeGSDD)
        entertYOuNAmeGSDD.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(38)
            make.height.equalTo(50)
            make.top.equalTo(takeiearGSDD.snp.bottom).offset(32)
        }
        
        self.addSubview(entertYOuBriefGSDD)
        entertYOuBriefGSDD.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(38)
            make.height.equalTo(50)
            make.top.equalTo(entertYOuNAmeGSDD.snp.bottom).offset(12.x_GSDD)
        }
        
        
        OKNAmeGSDD.setTitle("OK", for: .normal)
        OKNAmeGSDD.setTitleColor(.white, for: .normal)
        OKNAmeGSDD.backgroundColor = .black
        OKNAmeGSDD.layer.cornerRadius = 30
        OKNAmeGSDD.layer.masksToBounds = true
        addSubview(OKNAmeGSDD)
        OKNAmeGSDD.snp.makeConstraints { make in
            make.top.equalTo(entertYOuNAmeGSDD.snp.bottom).offset(72.x_GSDD)
            make.leading.trailing.equalToSuperview().inset(80.x_GSDD)
            make.top.equalTo(entertYOuNAmeGSDD.snp.bottom).offset(90.x_GSDD)
            make.height.equalTo(60)
        }
        
//        takeiearGSDD.addTarget(self, action: #selector(takeingsaveingGSDD), for: .touchUpInside)
//        
//        OKNAmeGSDD.addTarget(self, action: #selector(saveingGSDD), for: .touchUpInside)
    }
    
  
//    @objc func saveingGSDD() {
//
//    }
//    
//    
//   @objc func takeingsaveingGSDD() {
//        
//   
//   }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
}
extension DWeahingAllComin{
   
    
    
    
    func musicalJourney(_ Adven:String){
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
    }
    
    
    
}
