//
//  AppDelegate.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let rooorGSDD = UINavigationController.init(rootViewController: GSddguessingComin.init())
        rooorGSDD.navigationBar.isHidden = true
        self.window?.rootViewController = rooorGSDD
        self.window?.makeKeyAndVisible()
        return true
    }
    
    
    func manngerMu3chache(){
        let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let localPath = documentPath + "/LocalRecords"
        let detaipath = localPath.appending("post.wav")
    }
}

