//
//  GSDDsetrtrtuipminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class GSDDsetrtrtuipminein: UIViewController {

    @IBOutlet weak var priGSDD: UIButton!
    
    @IBOutlet weak var ptermGSDD: UIButton!
    
    
    @IBOutlet weak var ptstarSDD: UIButton!
    
    
    @IBOutlet weak var aboutsrSDD: UIButton!
    
    
    @IBOutlet weak var loaingupoutGSDD: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        priGSDD.layer.cornerRadius = 27
        priGSDD.layer.masksToBounds = true
        
        
        ptermGSDD.layer.cornerRadius = 27
        ptermGSDD.layer.masksToBounds = true
        
        
        ptstarSDD.layer.cornerRadius = 27
        ptstarSDD.layer.masksToBounds = true
        
        aboutsrSDD.layer.cornerRadius = 27
        aboutsrSDD.layer.masksToBounds = true
        
        
        
        loaingupoutGSDD.layer.cornerRadius = 25
        priGSDD.layer.masksToBounds = true
        
        
        
        
    }
    
    @IBAction func peibavcyGSDD(_ sender: UIButton) {
        let eluDetail = """
Effective Date: February 21, 2025

1. Types of information collected

Required data: account information (email/third-party login), device ID, audio/video content
Optional data: Geographic location (for local challenges), Address book (recommended by friends)
Automatic collection: using logs, clicking on heatmaps, crash reports
2. Data usage scenarios

Provide core functions such as song matching and challenge ranking
Personalized recommendations (such as challenges based on music preferences)
Analysis of Anti Cheating System
Send important service notifications via email
3. Third party sharing

Music copyright verification service provider (automatically sends song clips for copyright comparison)
Cloud service provider (AWS/Alibaba Cloud storage user content)
Disclosure to judicial authorities when required by law
4. User Rights

Export/delete account data through the settings page
Turn off personalized advertising recommendations
Revoke geographical location access permission

Data Protection Officer Email: Oloka@gmail.com
"""
        let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "Privacy Policy", texfReadShong: eluDetail)
        self.present(kiopGDSS, animated: true)
       
    }
    
    @IBAction func termavcyGSDD(_ sender: UIButton) {
        let eluDetail = """
Effective Date: February 21, 2025

1. Account Responsibility

Prohibit sharing accounts for challenging and score boosting
Must be at least 13 years old (or the legal age in the jurisdiction)
Real name reporting of illegal content can earn credit rewards
2. Content standards

Short videos must not contain unauthorized commercial advertisements
Private message content is monitored by a 24-hour automatic anti harassment system
The longest quoted song in the challenge should not exceed 15 seconds
3. Virtual currency rules

The purchased gold coins cannot be exchanged for cash/refunded
The coins obtained through the challenge have an anti fraud mechanism
When an account is banned, virtual assets will be automatically reset to zero
4. Disclaimer

We do not guarantee the copyright legality of music clips (dependent on user statements)
We are not responsible for any losses caused by private transactions between users
The service may temporarily remove specific songs due to copyright issues
5. Dispute Resolution

The challenge function will be frozen for 7 days for the first violation
Major disputes submitted to the jurisdiction of the Singapore International Arbitration Centre
Applicable California law (unless in conflict with local law)
Protocol update notification method: In app pop-up announcement
Complaints and Suggestions: Oloka@gmail.com
"""
        let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "Terms of Service", texfReadShong: eluDetail)
        self.present(kiopGDSS, animated: true)
       
    }
    
    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func gsddDeleter(_ sender: UIButton) {
        
        let ssipoAlera = UIAlertController(title: "Permanently delete account", message: "This operation will permanently delete all your data, including personal information, history, and purchased content. This operation is irrevocable", preferredStyle:.alert)
       
        ssipoAlera.addAction(UIAlertAction(title: "confirm deletion", style: .default, handler: { ddtion in
            "delete"
            
            var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            
            allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
            
            let useiIDING = GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddUID
            for (ing,itemt) in allUserDataSSIP.enumerated() {
                if itemt["gsddUID"] == useiIDING {
                    allUserDataSSIP.remove(at: ing)
                }
            }
            UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
            
            GSDDDALoaing.chanGSDD.signinyhuGSDD = nil
            GSDDEmaillogadComin.logUserImageIcon = nil
            GSDDEmaillogadComin.fancertListGSDD.removeAll()
            GSDDEmaillogadComin.follwercertListGSDD.removeAll()
            UserDefaults.standard.set(nil, forKey: "currentLogGSDDUID")
            let rooorGSDD = UINavigationController.init(rootViewController: GSddguessingComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rooorGSDD
            
        }))
        
        ssipoAlera.addAction(UIAlertAction(title: "Keep account", style: .default))
        self.present(ssipoAlera, animated: true)
    }
    
    @IBAction func gsddLogout(_ sender: UIButton) {
        
        GSDDDALoaing.chanGSDD.signinyhuGSDD = nil
        GSDDEmaillogadComin.logUserImageIcon = nil
        GSDDEmaillogadComin.fancertListGSDD.removeAll()
        GSDDEmaillogadComin.follwercertListGSDD.removeAll()
        let rooorGSDD = UINavigationController.init(rootViewController: GSddguessingComin.init())
        rooorGSDD.navigationBar.isHidden = true
        UserDefaults.standard.set(nil, forKey: "currentLogGSDDUID")
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rooorGSDD
    
    }
    
    @IBAction func satretGSDD(_ sender: UIButton) {

        guard let webUrl = URL(string: "https://app.rwgwrgvw.link") else { return }
        UIApplication.shared.open(webUrl, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func potoAboutusDGSD(_ sender: UIButton) {

        self.navigationController?.pushViewController(GSDDAbounreinusuipminein.init(), animated: true)
        
    }
    
    
}
