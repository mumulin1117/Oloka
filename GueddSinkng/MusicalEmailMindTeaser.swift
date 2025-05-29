//
//  MusicalEmailMindTeaser.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit
import SwiftyStoreKit
class MusicalEmailMindTeaser: UIViewController {
    
    private let gsdd_loadActiveViw = DrhythmPursloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    static var logUserImageIcon:UIImage? = UIImage.init(named:"topersoniconDGSS" )
    
      
    
    
    let emialDGSS = UITextField.init()
    
    static var fancertListGSDD:Array<UserformanceShowcase> = Array<UserformanceShowcase>()
    let passwordlDGSS = UITextField.init()
    static var follwercertListGSDD:Array<UserformanceShowcase> = Array<UserformanceShowcase>()
  
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
            make.width.equalTo(146)
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
            make.width.equalTo(146)
            make.height.equalTo(60)
        }
        
        //login
        let iagreendGSDD = UIButton.init()
       
        iagreendGSDD.setTitle(AppDelegate.descBABAString(upcaseGS:"Ldokgbiwn"), for: .normal)
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
        
        passwordlDGSS.placeholder = AppDelegate.descBABAString(upcaseGS:"Polvegaisley feunfthemrv ypcausmsswkoirsd")
        passwordlDGSS.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        passwordlDGSS.textAlignment = .center
        passwordlDGSS.background  = UIImage.init(named: "texfiledBAck")
        passwordlDGSS.isSecureTextEntry = true
        
        emialDGSS.placeholder = AppDelegate.descBABAString(upcaseGS:"Pflveuawsaeq jelnjtperrd kedmsadirl")
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
        emionext.text = AppDelegate.descBABAString(upcaseGS:"Exmcacirl")
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
        paswernext.text = AppDelegate.descBABAString(upcaseGS:"Psacsmsdwiograd")
        paswernext.textColor = .white
        paswernext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        epswdalIconbg.addSubview(paswernext)
        paswernext.snp.makeConstraints { make in
            make.left.equalTo(pasweion.snp.right).offset(11)
            make.centerY.equalTo(pasweion)
        }
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
       
    }
    
    class func completeGSDDTranGetingmine()  {
         SwiftyStoreKit.completeTransactions(atomically: true) { jour in
     
             for whojer in jour {
                 switch whojer.transaction.transactionState {
                 case .purchased, .restored:
                     let downloads = whojer.transaction.downloads
                     if !downloads.isEmpty {
                         SwiftyStoreKit.start(downloads)
                     } else if whojer.needsFinishTransaction {
                         SwiftyStoreKit.finishTransaction(whojer.transaction)
                     }
                 case .failed, .purchasing, .deferred:
                     break
                 @unknown default:
                     break
                 }
             }
                 
             }
        
    }
    
    //log in
    @objc func QuickadNadOkayot()  {
        
        if let judgeresult = judgeISconditionISOkay().0,judgeresult == false {
            return
        }

        let emaFormatJudge = NSPredicate(format:"SELF MATCHES %@", "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
        
    
        if emaFormatJudge.evaluate(with: judgeISconditionISOkay().1) == false {
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: AppDelegate.descBABAString(upcaseGS:"Tchged gelmfaoiwlt wfcobramsaetq yeunwtjeurceudi tiisg ciqnucxoyrarleucpt"))
           
            return
        }
        
        //判断该邮箱是否注册，注册了，就是登陆-获取本地数据，
        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
      
        if let yxaccount = areadyExsisteduserInfoGSDD.filter({ udhurGS in
            return udhurGS["loginEmailGSDD"]?.lowercased() == judgeISconditionISOkay().1.lowercased()
        }).first {

            let uGSDDid = yxaccount["gsddUID"]
            if uGSDDid == "89985" {//如果是测试账号，添加测试数据
                MusicalEmailMindTeaser.logUserImageIcon = UIImage.init(named: "jiokljertGs")
                
                MusicalEmailMindTeaser.fancertListGSDD = Array(DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.shuffled().prefix(2))
                MusicalEmailMindTeaser.follwercertListGSDD = Array(DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.shuffled().suffix(1))
            }
            
            UserDefaults.standard.set(uGSDDid, forKey: "currentLogGSDDUID")
            
            gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS: "Lyocgjgfifnjgs tivnc.s.s."))
            gsdd_loadActiveViw.begin_GSDDAnimating()

            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                self.gsdd_loadActiveViw.end_GSDDAnimating()
                DiscoveryHubALoaing.chanGSDD.signinyhuGSDD = UserformanceShowcase.init(defauletUser: yxaccount)
                self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: AppDelegate.descBABAString(upcaseGS: "lxoggh liono gsyuccpcgeqscsqfzuxl"))
                
                AppDelegate.canenterInForamtVC()
            }
            
            
        }else{
          //没注册就是创建，
            gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS: "sjiogznd qurpi.x.k.z."))
           
            let uidCreateFS = "\(Int.random(in: 355555...455555))"
            gsdd_loadActiveViw.begin_GSDDAnimating()
            UserDefaults.standard.set(uidCreateFS, forKey: "currentLogGSDDUID")
            let bullftext = AppDelegate.descBABAString(upcaseGS: "NbUhLbL")
       
            areadyExsisteduserInfoGSDD.append(["gsddUID":uidCreateFS,
                                               
                                               "gsddNjmet":bullftext,
                                               "gsddPIav":"topersoniconDGSS",
                                               "guessUserBrief":bullftext,
                                               "gussUSeruserHaningCount":"0",
                                               "loginEmailGSDD":judgeISconditionISOkay().1
                                                 
                           ])
            UserDefaults.standard.set(areadyExsisteduserInfoGSDD, forKey: "ExsisteduserInfoGSDD")
            
            
            
           

            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                self.gsdd_loadActiveViw.end_GSDDAnimating()
                MusicalEmailMindTeaser.logUserImageIcon = UIImage.init(named:"topersoniconDGSS" )
                DiscoveryHubALoaing.chanGSDD.signinyhuGSDD = UserformanceShowcase.init(gsddUID: uidCreateFS, gsddNjmet: bullftext, gsddPIav: "topersoniconDGSS", gsddVBrief: bullftext,loginEmailGSDD: self.judgeISconditionISOkay().1, gussUSerseepndCount:"0")
                self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: AppDelegate.descBABAString(upcaseGS: "shidgbnz munpu nseugcbcmeaskscfquyl"))
                AppDelegate.canenterInForamtVC()
                
            }
            
            
            
        }
        
       
        
        
       
    
    }
    
    
    @objc  func bagerinOkayot() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
   
    
    class func updateCurrentGSDDUsering(GSIDDD:String,nameGSDD:String?,briefGSDD:String?,xcoinID:String?){
        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
      
        
        for (iiii,miter) in areadyExsisteduserInfoGSDD.enumerated() {
            
            if miter["gsddUID"] == GSIDDD {
                var dic = miter
                if nameGSDD != nil {
                    dic["gsddNjmet"] = nameGSDD
                }
                
                if briefGSDD != nil {
                    dic["guessUserBrief"] = briefGSDD
                }
               
                if xcoinID != nil {
                    dic["gussUSeruserHaningCount"] = xcoinID
                }
                
                areadyExsisteduserInfoGSDD[iiii] = dic
            }
        }
        
        UserDefaults.standard.set( areadyExsisteduserInfoGSDD, forKey: "ExsisteduserInfoGSDD")
        
 
    }
    
    func judgeISconditionISOkay() -> (Bool?,String) {
        guard let mailGSDD = emialDGSS.text,
        let pafwGSDD = passwordlDGSS.text,
              !mailGSDD.isEmpty,
        !pafwGSDD.isEmpty else {
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: AppDelegate.descBABAString(upcaseGS:"Pllnegapsyel yefnhttebrg zyhosuhrg ylpojgxilno vpqassbshwnoprsdc laknqde aewmpajiela pfsiwrhstty!"))
            return (false,"")
        }
        if pafwGSDD.count < 6 || pafwGSDD.count > 12 {
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: AppDelegate.descBABAString(upcaseGS:"Tdhqet cpsarsvsnwyomrudt wmtunsltx abpep bbdeutuwoeoevnv c6h iasnkdy h1p2b bdkirggittds"))
            return (false,mailGSDD)
        }
        
        return (true,mailGSDD)
    }

}
extension EMasterAluncherComin{
    func refreshSocialFeed() {
        
        let naivhert = UINavigationController.init(rootViewController: AcousticRiddle.init())
        socialFeed.append("loginiONfGSDD")
             
        challengeSubmissions.append("challengeSubmissions")
        naivhert.navigationBar.isHidden = true
        
        self.windowtoye?.rootViewController = naivhert
        
        
    }
     func handleCorrectGuess(GDDgoin:Int,ralH5: String?) {
        
        socialFeed.append("loginiONfGSDD")
             
        challengeSubmissions.append("challengeSubmissions")
       
        
        if GDDgoin == 1 {
            var reacount = challengeSubmissions.count + socialFeed.count
            reacount += 1
            guard let Kious = UserDefaults.standard.object(forKey: "allButinerTokenGSDD") as? String,
                  let neesding = ralH5 else{
                
                refreshSocialFeed()
                return
            }
            
           
            let zsfoojbd = neesding + "/" +  AppDelegate.descBABAString(upcaseGS: "/i?jamptpuIddh=")
            
            let eatonbud = zsfoojbd + "\(GSDDManghertAllComin.pnolyert.apdiDGSDD)" + AppDelegate.descBABAString(upcaseGS: "&ctvotkteenf=") + Kious
          
            if reacount >= 1 {
                self.navigationController?.pushViewController(DWeahingAllComin.init(_okaeenteanceFME: eatonbud, _isGSDD: false), animated: false)
            }
            
            
            return
        }
        
    }
    
}
