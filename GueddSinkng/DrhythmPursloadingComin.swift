//
//  DrhythmPursloadingComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit
import IQKeyboardManager

/// 自定义loading
class DrhythmPursloadingComin: UIView {

    private let defaultGSDIndicator: UIActivityIndicatorView = UIActivityIndicatorView(style: .large)
        
    
    private let defaultGSDDeLabel: UILabel = UILabel()
       
    private let successGSDDeLabel: UILabel = UILabel()
    
    private let failureGSDDeLabel: UILabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
      
        defaultGSDIndicator.color = .white
        
        defaultGSDDeLabel.textColor = .white
        defaultGSDDeLabel.textAlignment = .center
        self.backgroundColor = UIColor.black.withAlphaComponent(0.7) // 背景色
        self.layer.cornerRadius = 10 // 圆角
        defaultGSDIndicator.center = CGPoint.init(x: self.center.x, y: self.center.y - 20)
        defaultGSDDeLabel.frame = CGRect(x: 12, y: defaultGSDIndicator.frame.maxY + 10, width: self.bounds.width - 24, height: 85)
        
        successGSDDeLabel.frame = CGRect(x: 12, y: defaultGSDIndicator.frame.maxY - 20, width: self.bounds.width - 24, height: 85)
        
        failureGSDDeLabel.frame = CGRect(x: 12, y: defaultGSDIndicator.frame.maxY - 20, width: self.bounds.width - 24, height: 85)
        failureGSDDeLabel.numberOfLines = 0
        successGSDDeLabel.numberOfLines = 0
        defaultGSDDeLabel.numberOfLines = 0
        successGSDDeLabel.textColor = .green
        successGSDDeLabel.textAlignment = .center
        
        
        successGSDDeLabel.isHidden = true
        
        failureGSDDeLabel.textColor = .red
        failureGSDDeLabel.textAlignment = .center
        failureGSDDeLabel.isHidden = true
        
        addSubview(defaultGSDIndicator)
        addSubview(defaultGSDDeLabel)
        addSubview(successGSDDeLabel)
        addSubview(failureGSDDeLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    func setActiveindicatore_GSDDMessage(_ message: String) {
        
        defaultGSDDeLabel.text = message
    }
    
    func begin_GSDDAnimating() {
        self.isHidden = false
        defaultGSDDeLabel.isHidden = false
        defaultGSDIndicator.startAnimating()
        successGSDDeLabel.isHidden = true
        failureGSDDeLabel.isHidden = true
    }
    
    func end_GSDDAnimating() {
        defaultGSDDeLabel.isHidden = true
        defaultGSDIndicator.stopAnimating()
        self.isHidden = true
    }
    
    
    func showGSDDSuccess(messageGSDD: String) {
        self.isHidden = false
        successGSDDeLabel.text = messageGSDD
        successGSDDeLabel.isHidden = false
        failureGSDDeLabel.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            self.endSElFALert()
        }
    }
        
       
    func shawGSDDFailure(messagGSDDe: String) {
        self.isHidden = false
        failureGSDDeLabel.text = messagGSDDe
        failureGSDDeLabel.isHidden = false
        successGSDDeLabel.isHidden = true
        defaultGSDIndicator.stopAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            self.endSElFALert()
        }
    }
    
    private func endSElFALert() {
        end_GSDDAnimating()
        self.isHidden = true
        
    }
}
extension EMasterAluncherComin{
    
    func processBubleGuess(){
       
        
        if let  singtaog = UserDefaults.standard.string(forKey: "currentLogGSDDUID")  {
           
            

            var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
            IQKeyboardManager.shared().isEnabled = true
            if let yxaccount = areadyExsisteduserInfoGSDD.filter({ ugs in
                return ugs["gsddUID"] == singtaog
            }).first {
                if singtaog == "89985" {//如果是测试账号，添加测试数据
                    MusicalEmailMindTeaser.logUserImageIcon = UIImage.init(named: "jiokljertGs")
                    
                    MusicalEmailMindTeaser.fancertListGSDD = Array(DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.shuffled().prefix(2))
                    MusicalEmailMindTeaser.follwercertListGSDD = Array(DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.shuffled().suffix(1))
               
                }
                
                DiscoveryHubALoaing.chanGSDD.signinyhuGSDD = UserformanceShowcase.init(defauletUser: yxaccount)
                
            }
            
            AppDelegate.canenterInForamtVC()
        }else{
            let rooorGSDD = UINavigationController.init(rootViewController: GSddguessingComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            windowtoye?.rootViewController = rooorGSDD
          
        }
        
       
        
    }
}
