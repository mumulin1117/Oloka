//
//  GSDDAluncherComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/3/17.
//

import UIKit
import Alamofire
import IQKeyboardManager
class GSDDAluncherComin: UIViewController {
    var netrequestCountFME:Int = 0
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "loginiONfGSDD")
        view.addSubview(matherlang)
        
        
        let othiehtico = UIImageView(image: UIImage.init(named: "launiconBeg"))
        othiehtico.contentMode = .scaleAspectFill
        othiehtico.image = UIImage(named: "launiconBeg")
        view.addSubview(othiehtico)
        othiehtico.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
        
        onceawayNowInlaunch()
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }
    
    private  func onceawayNowInlaunch()  {
         let reachabilityManager = NetworkReachabilityManager()
        guard let isReachable = reachabilityManager?.isReachable,isReachable == true else {
            print("无法检测到网络状态")
            if self.netrequestCountFME <= 3 {
                self.onceawayNowInlaunch()
                self.netrequestCountFME += 1
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if self.reviewingBuildITimeIsokayFME() == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    self.enterceWithnoFeaturesFME()
                }
#endif
            

       
    }
    
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
    private  func reviewingBuildITimeIsokayFME()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    
    
    
    
    
    private func inWhichEntranceFME()  {
       
      
#if DEBUG
        let adventurepatherFME = "/api/index/v2/getDf"
        let versationParamFME: [String: Any] = [
            "deviceId":GSDDManghertAllComin.pnolyert.onlyidduserFME,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":["en"],//GSDDManghertAllComin.pnolyert.hustlangsAllLocalFME
            "otherAppNames":["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//GSDDManghertAllComin.pnolyert.installednaesFME,
           
            "timezone":"japen",//TimeZone.current.identifier,
            "keyboards":["en-US"],//GSDDManghertAllComin.pnolyert.fmeboadrdkeysLaungs,
            "useVpn":GSDDManghertAllComin.pnolyert.checkphonertvpiernLinkcted() == true ? 1 : 0
        ]

        #else
        let adventurepatherFME = "/melody/pulse/community/grooveZ"
//        let versationParamFME: [String: Any] = [
//            "rytm5":GSDDManghertAllComin.pnolyert.onlyidduserFME ,
//            "instType": UIDevice.current.localizedModel,
//            "verHarm": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "langVib":["en-CU"],
//            "mixApp9":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "zoneGroove":"America/New_York",
//            "keyFlow":["en-US"],
//            "secTune": 0
//        ]
       
        let versationParamFME: [String: Any] = [
            "rytm5":UITLoakerinder.pnolyert.onlyidduserFME ,
            "instType": UIDevice.current.localizedModel,
            "verHarm": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "langVib":UITLoakerinder.pnolyert.hustlangsAllLocalFME,
            "mixApp9":UITLoakerinder.pnolyert.installednaesFME,

            "zoneGroove":TimeZone.current.identifier,
            "keyFlow":UITLoakerinder.pnolyert.fmeboadrdkeysLaungs,
            "secTune":UITLoakerinder.pnolyert.checkphonertvpiernLinkcted() == true ? 1 : 0
        ]
#endif
        
        print(versationParamFME)
        
           

        GSDDManghertAllComin.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
#if DEBUG
            #else
            SVProgressHUD.dismiss()
#endif
            
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    self.enterceWithnoFeaturesFME()
                    return
                }

                let effortlesslyfme = retro["h5Url"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(effortlesslyfme, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = effortlesslyfme else{
                        
                        let excitementfme = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
                        excitementfme.navigationBar.isHidden = true
                        var windowtoye:UIWindow?
                        if let window = (UIApplication.shared.connectedScenes
                            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                            .windows
                            .first(where: \.isKeyWindow)  {
                            windowtoye = window
                            
                        }
                        windowtoye?.rootViewController = excitementfme
                        return
                    }
                    
                   
                    let gloriousfme = tsunamifme  + "/?appId=\(GSDDManghertAllComin.pnolyert.appleidSmalllWrite)&token=" + chatbotfme
                  
                    let maingbu = GSDDWeahingAllComin.init(wonderfulnowing: gloriousfme, islogingpagepalt: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if actionfme == 0 {
                    let excitementFme = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
                    excitementFme.navigationBar.isHidden = true
                    var windowtoye:UIWindow?
                    if let window = (UIApplication.shared.connectedScenes
                        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                        .windows
                        .first(where: \.isKeyWindow)  {
                        windowtoye = window
                        
                    }
                    
                    windowtoye?.rootViewController = excitementFme
                }
                
                
                
            case .failure(_):
            
                self.enterceWithnoFeaturesFME()
                
                
            }
            
        }
       
    }
    
    
    
    func enterceWithnoFeaturesFME(){
        var windowtoye:UIWindow?
        if let window = (UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
            .windows
            .first(where: \.isKeyWindow)  {
            windowtoye = window
            
        }
        
        
        if let  uieidSignin = UserDefaults.standard.string(forKey: "currentLogGSDDUID")  {
           
            self.getLoacalLoginUser(uieidSignin: uieidSignin)

            AppDelegate.canenterInForamtVC()
        }else{
            let rooorGSDD = UINavigationController.init(rootViewController: GSddguessingComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            windowtoye?.rootViewController = rooorGSDD
          
        }
        
       
        
    }
    
    private func getLoacalLoginUser(uieidSignin:String)  {
        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
        IQKeyboardManager.shared().isEnabled = true
        if let yxaccount = areadyExsisteduserInfoGSDD.filter({ ugs in
            return ugs["gsddUID"] == uieidSignin
        }).first {
            if uieidSignin == "89985" {//如果是测试账号，添加测试数据
                GSDDEmaillogadComin.logUserImageIcon = UIImage.init(named: "jiokljertGs")
                
                GSDDEmaillogadComin.fancertListGSDD = Array(GSDDDALoaing.chanGSDD.loafingDaGSDD.shuffled().prefix(2))
                GSDDEmaillogadComin.follwercertListGSDD = Array(GSDDDALoaing.chanGSDD.loafingDaGSDD.shuffled().suffix(1))
           
            }
            
            GSDDDALoaing.chanGSDD.signinyhuGSDD = GSDDAbountUserinfo.init(defauletUser: yxaccount)
            
        }
        
    }
}
