//
//  AppDelegate.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit
//import IQKeyboardManager
@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    static var appUITPushToken:String = ""
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { okayufir, error in
            if okayufir {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
        
        if UserDefaults.standard.string(forKey: "downAreadGSloadapp") == nil  {
            createDemoUserGSDD(gsdddat: false)
        }
        
//        if let  uieidSignin = UserDefaults.standard.string(forKey: "currentLogGSDDUID")  {
//           
//            self.getLoacalLoginUser(uieidSignin: uieidSignin)
//
//            AppDelegate.canenterInForamtVC()
//        }else{
            let rooorGSDD = UINavigationController.init(rootViewController: GSDDAluncherComin.init())
            rooorGSDD.navigationBar.isHidden = true
//            
            self.window?.rootViewController = rooorGSDD
//          
//        }
        
        GSDDEmaillogadComin.completeGSDDTranPay()
        
        let entetViewsVioer = UITextField()
        entetViewsVioer.isSecureTextEntry = true
        if (!window!.subviews.contains(entetViewsVioer)) {
            window!.addSubview(entetViewsVioer)
           
            entetViewsVioer.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            entetViewsVioer.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(entetViewsVioer.layer)
            if #available(iOS 17.0, *) {
                
                entetViewsVioer.layer.sublayers?.last?.addSublayer(window!.layer)
                
            }else{
                entetViewsVioer.layer.sublayers?.first?.addSublayer(window!.layer)
            }
            
            
        }
        
        self.window?.makeKeyAndVisible()
        
        
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
       
       
        let pushRemotenotiTokenVAF = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.appUITPushToken = pushRemotenotiTokenVAF
    }
   
    private  func createDemoUserGSDD(gsdddat:Bool)  {
      
        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        areadyExsisteduserInfoGSDD.append(["gsddNjmet":"Artrlia",
                                "gsddPIav":"jiokljertGs",
                                "gussUSerPayCount":"0",
                                "loginEmailGSDD":"Oloka@gmail.com",
                                "guessUserBrief":"I love guessing songs!",
                                "gsddUID":"89985"

                               ])
        
        let turstGSDduser =  ["gsddUID":"76990987",
                            "gsddNjmet":"Tourist mode",
                            "gsddPIav":"topersoniconDGSS",
                            "guessUserBrief":"NULL",
                            "gussUSerPayCount":"0",
                            "loginEmailGSDD":"tourist090@gmai.com"
                              
        ]
        areadyExsisteduserInfoGSDD.append(turstGSDduser)
        
        if gsdddat == false {
            UserDefaults.standard.set("downAreadGS", forKey: "downAreadGSloadapp")
            
            UserDefaults.standard.set(areadyExsisteduserInfoGSDD, forKey: "ExsisteduserInfoGSDD")
        }
      
       
    }
    

    
//    private func getLoacalLoginUser(uieidSignin:String)  {
//        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
//        areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
//        IQKeyboardManager.shared().isEnabled = true
//        if let yxaccount = areadyExsisteduserInfoGSDD.filter({ ugs in
//            return ugs["gsddUID"] == uieidSignin
//        }).first {
//            if uieidSignin == "89985" {//如果是测试账号，添加测试数据
//                GSDDEmaillogadComin.logUserImageIcon = UIImage.init(named: "jiokljertGs")
//                
//                GSDDEmaillogadComin.fancertListGSDD = Array(GSDDDALoaing.chanGSDD.loafingDaGSDD.shuffled().prefix(2))
//                GSDDEmaillogadComin.follwercertListGSDD = Array(GSDDDALoaing.chanGSDD.loafingDaGSDD.shuffled().suffix(1))
//           
//            }
//            
//            GSDDDALoaing.chanGSDD.signinyhuGSDD = GSDDAbountUserinfo.init(defauletUser: yxaccount)
//            
//        }
//        
//    }
    
    
    class func canenterInForamtVC()  {
        let rooorGSDD = UINavigationController.init(rootViewController: GSDDloMianComin.init())
        
        rooorGSDD.navigationBar.isHidden = true
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rooorGSDD
    }
    
    
 
    class func descBABAString(upcaseGS:String,orialna:Bool = false,lastercase:String = "descBABAString") -> String {
        var orgilaCase = orialna
        var debabscGSDD = ""
        if lastercase.count < 3 {
            debabscGSDD.append(lastercase)
            orgilaCase = true
        }
        
        
        var needGSDDSbabay = true
        
        for singlr in upcaseGS {
            if needGSDDSbabay {
                debabscGSDD.append(singlr)
            }
            if orgilaCase == true {
                needGSDDSbabay.toggle()
            }else{
                needGSDDSbabay.toggle()
            }
           
        }
       
        return debabscGSDD
    }
}

