//
//  AppDelegate.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit
import IQKeyboardManager
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if UserDefaults.standard.string(forKey: "downAreadGSloadapp") == nil || UserDefaults.standard.string(forKey:"downAreadGSloadapp" ) == "firstTime" {
            createDemoUserGSDD()
        }
        
        if let  uieidSignin = UserDefaults.standard.string(forKey: "currentLogGSDDUID")  {
           
            self.getLoacalLoginUser(uieidSignin: uieidSignin)
            let rooorGSDD = UINavigationController.init(rootViewController: GSDDloMianComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            self.window?.rootViewController =  rooorGSDD
            
           
        }else{
            let rooorGSDD = UINavigationController.init(rootViewController: GSddguessingComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            self.window?.rootViewController = rooorGSDD
          
        }
        
        GSDDEmaillogadComin.completeGSDDTranPay()
        self.window?.makeKeyAndVisible()
        
        
        return true
    }
    
    
   
    private  func createDemoUserGSDD()  {
        //判断是否是第一次下载App，如果是第一次，创建测试账号
        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        areadyExsisteduserInfoGSDD.append(["gsddNjmet":"Aberria",
                                "gsddPIav":"SSIPavator9",
                                "gussUSerPayCount":"300",
                                "loginEmailGSDD":"Oloka@gmail.com",
                                "guessUserBrief":"I love guessing songs!",
                                "gsddUID":"89985"

                               ])
        
        UserDefaults.standard.set("notfirsttime", forKey: "downAreadGSloadapp")
        
        UserDefaults.standard.set(areadyExsisteduserInfoGSDD, forKey: "ExsisteduserInfoGSDD")
       
    }
    

    
    private func getLoacalLoginUser(uieidSignin:String)  {
        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
        IQKeyboardManager.shared().isEnabled = true
        if let yxaccount = areadyExsisteduserInfoGSDD.filter({ dicUserSSIP in
            return dicUserSSIP["gsddUID"] == uieidSignin
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

