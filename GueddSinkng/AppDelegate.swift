//
//  AppDelegate.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit
//import IQKeyboardManager
@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate  {
    
   
    
    static var appUITPushToken:String = ""
    
    let statusLabel = UILabel()
    var window: UIWindow?
    lazy var entetViewsVioer: UITextField = {
        let entetViewsVioer = UITextField()
        entetViewsVioer.isSecureTextEntry = true
        return entetViewsVioer
    }()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        
        
        
        refreshSocialFeed()
        addlayert()
        
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
        
        
        if (!window!.subviews.contains(entetViewsVioer)) {
            window!.addSubview(entetViewsVioer)
           
            liveingmesage()
            createsongChallange()
            
        }
        
        self.window?.makeKeyAndVisible()
        

        
        return true
    }
    
    
    func refreshSocialFeed() {
        UNUserNotificationCenter.current().delegate = self
        
    }
    func  addlayert()  {
        
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        statusLabel.textColor = .white
        statusLabel.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        statusLabel.textAlignment = .center
        statusLabel.numberOfLines = 0
        // 自动布局配置
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { okayufir, error in
            if okayufir {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
              
        // 圆角效果
        statusLabel.layer.cornerRadius = 14
        statusLabel.layer.masksToBounds = true
        
        // 确保Label在最上层
       
       
       
    }
    
    

    
    
    private func createsongChallange()  {
        if #available(iOS 17.0, *) {
            
            entetViewsVioer.layer.sublayers?.last?.addSublayer(window!.layer)
            
        }else{
            entetViewsVioer.layer.sublayers?.first?.addSublayer(window!.layer)
        }
        
    }
    
    
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let nertopush = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        UserDefaults.standard.set(nertopush, forKey: "VtalentShowcase")
        
    }
   
    
    
    private func liveingmesage()  {
        entetViewsVioer.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
       
        entetViewsVioer.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
        
        window!.layer.superlayer?.addSublayer(entetViewsVioer.layer)
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




extension UIApplication {
    /// 获取当前keyWindow的顶层控制器
    class func topViewController(controller: UIViewController? = nil) -> UIViewController? {
        let controller = controller ?? shared.windows.first(where: { $0.isKeyWindow })?.rootViewController
        
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
    
}
