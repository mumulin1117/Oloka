//
//  AppDelegate.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if UserDefaults.standard.string(forKey: "downAreadGSloadapp") == nil || UserDefaults.standard.string(forKey:"downAreadGSloadapp" ) == "firstTime" {
            createDemoUserGSDD()
        }
        
        if let  uieidSignin = UserDefaults.standard.string(forKey: "currentLogGSDDUID")  {
           
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
    
    
   
    func createDemoUserGSDD()  {
        //判断是否是第一次下载App，如果是第一次，创建测试账号
        var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        allUserDataSSIP.append(["gsddNjmet":"Aberria",
                                "gsddPIav":"SSIPavator9",
                                "gussUSerPayCount":"300",
                                "loginEmailGSDD":"oloka@gmail.com ",
                                "guessUserBrief":"I love guessing songs!",
                                "gsddUID":"89985"

                               ])
        
        UserDefaults.standard.set("notfirsttime", forKey: "downAreadGSloadapp")
        
        UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
       
    }
    

}

