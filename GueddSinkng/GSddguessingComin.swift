//
//  GSddguessingComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit

class GSddguessingComin: UIViewController ,UITextViewDelegate{
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        NotificationCenter.default.addObserver(self, selector: #selector(updatePrivacyAgreeStatusped), name: NSNotification.Name.init("updateReadStataus"), object: nil)
        
        //背景
        let nameringGSDD = UIImageView(image: UIImage.init(named: "lanhuafoFi_bg"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
        view.addSubview(nameringGSDD)
        
        
        
        
        ///超链接
        let termlinkLab = UITextView.init(frame: CGRect.init(x: 57, y: UIScreen.main.bounds.height  - safeAreaBottomInset - 40 - 36 , width: UIScreen.main.bounds.width - 57 - 30, height: 55))
        termlinkLab.isUserInteractionEnabled = true
        termlinkLab.delegate = self
        termlinkLab.backgroundColor = .clear
        termlinkLab.isEditable = false
        termlinkLab.isScrollEnabled = false
        view.addSubview(termlinkLab)
        
        let totlaContetng = "By signing in, you agree to our Privacy Policy and Terms of Service."
        
        let attributedString = NSMutableAttributedString(string:totlaContetng )
        
        if let privacyRange = totlaContetng.range(of: "Privacy Policy") {
                    
            let nsRange = NSRange(privacyRange, in: totlaContetng)
            attributedString.addAttribute(.link, value: "privacy://policy", range: nsRange)
        }
        
        
        if let termyRange = totlaContetng.range(of: "Terms of Service") {
                    
            let nsRange = NSRange(termyRange, in: totlaContetng)
            attributedString.addAttribute(.link, value: "terms://terms", range: nsRange)
        }
        
        attributedString.addAttributes([
            .font: UIFont.systemFont(ofSize: 14),
            .foregroundColor: UIColor.gray
        ], range: NSRange(location: 0, length: totlaContetng.count))
        
        termlinkLab.attributedText = attributedString
        termlinkLab.linkTextAttributes = [
            .foregroundColor: UIColor.white,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        
        //selbutton
        let checkdGSDD = UIButton.init(frame: CGRect.init(x:18, y: termlinkLab.frame.midY - 10, width: 22, height: 22))
        checkdGSDD.setImage(UIImage.init(named: "StatuijkGDSS_no"), for: .normal)
        checkdGSDD.setImage(UIImage.init(named: "StatuijkGDSS"), for: .selected)
        checkdGSDD.tag = 54
        checkdGSDD.addTarget(self, action: #selector(checkNadOkayot(gsddBu:)), for: .touchUpInside)
    
        view.addSubview(checkdGSDD)
        //ELUA
        let gdssELUA = UIButton.init(frame: CGRect.init(x: 16, y: framtipStartinset + 5, width: 80, height: 36))
        gdssELUA.layer.cornerRadius = 18
        gdssELUA.backgroundColor = .white
        gdssELUA.layer.opacity = 0.4
        gdssELUA.layer.masksToBounds = true
        gdssELUA.setTitle("ELUA >>", for: .normal)
        gdssELUA.setTitleColor(.lightGray, for: .normal)
        gdssELUA.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        gdssELUA.addTarget(self, action: #selector(guesssELUA), for: .touchUpInside)
        view.addSubview(gdssELUA)
        
        //emailicon
        let elilingGSDD = UIButton.init(frame: CGRect(x: 20, y: checkdGSDD.frame.minY - 46 - 52, width: 52, height: 52))
        elilingGSDD.setImage(UIImage.init(named: "gsddGussFun"), for: .normal)
        elilingGSDD.addTarget(self, action: #selector(elaiolloginNadOkayot), for: .touchUpInside)
        view.addSubview(elilingGSDD)
        //quicklog
        let iagreendGSDD = UIButton.init(frame: CGRect.init(x: elilingGSDD.frame.maxX + 18, y: elilingGSDD.frame.minY, width: UIScreen.main.bounds.width - (elilingGSDD.frame.maxX + 18) - 18, height: 52))
        
        iagreendGSDD.setTitle("Tourist login", for: .normal)
        iagreendGSDD.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
        iagreendGSDD.layer.masksToBounds = true
        iagreendGSDD.layer.cornerRadius = 10
        iagreendGSDD.addTarget(self, action: #selector(QuickadNadOkayot), for: .touchUpInside)
        iagreendGSDD.setTitleColor(.black, for: .normal)
        iagreendGSDD.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        view.addSubview(iagreendGSDD)
        //textcon
        let textcongGSDD = UIImageView(image: UIImage.init(named: "Sing & GuessFun"))
        textcongGSDD.frame = CGRect(x: 0, y: iagreendGSDD.frame.minY - 46, width: 184, height: 18)
        textcongGSDD.center.x = self.view.center.x
        textcongGSDD.contentMode = .scaleToFill
        view.addSubview(textcongGSDD)
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }
    
    @objc func guesssELUA() {
        let eluDetail = """
End User License Agreement (EULA)

Effective Date: February 21, 2025
Latest update: February 27, 2025
﻿
1. License Grant
﻿
The user obtains a non-exclusive, non-transferable limited license to use the Oloka application on personal devices, strictly limited to lawful non-commercial entertainment purposes only.
﻿
2. Content Ownership
﻿
User-generated audio/video content retains ownership but grants Oloka a perpetual, irrevocable, worldwide license to host, moderate, and remove content at our sole discretion.
All interface designs, algorithms, trademarks, and content moderation systems within the application are the exclusive property of Oloka.

3. Content Moderation Policy 🌟
﻿
3.1 Proactive Filtering
Oloka employs:
﻿
AI-based automated filtering for hate speech, explicit content, and copyright violations
Manual review team operating 24/7
Hash-matching technology against known illegal content databases

3.2 User Reporting Tools
Users must:
﻿
Immediately report objectionable content via in-app "Report" button
Provide detailed justification for reports
False reporting may result in account suspension

3.3 Abuse Prevention
Users may:
﻿
Block abusive accounts through profile settings
Restrict comments/duets from specific users
Enable "Family Filter" to auto-hide mature content

3.4 Enforcement Timeline
Oloka guarantees:
﻿
Initial response to reports within 4 hours
Final resolution (removal/account action) within 24 hours
Permanent ban for severe violations (hate speech, CSAM, etc.)

4. Usage Restrictions
﻿
Strictly Prohibited:
﻿
Uploading content containing:
Hate speech targeting race/religion/gender identity (per UN definitions)
Graphic violence or extremism
Non-consensual intimate media
Misinformation inciting harm
Any attempt to bypass content filters through spelling variations, overlays, or metadata manipulation
Creating multiple accounts to evade bans
Violations will result in:
﻿
Immediate content removal
Permanent device/IP ban
Legal referral for severe cases

5. Termination
﻿
Oloka reserves the right to terminate licenses without notice for:
﻿
Repeated policy violations (≥3 confirmed reports)
Evasion of moderation systems
Commercial misuse of service

6. Contact & Dispute
﻿
Moderation Appeals:
Email appeals with evidence to Oloka@gmail.com within 7 days of action.
﻿
Legal Notices:
Service provider: Oloka LLC

"""
        
        let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "ELUA", texfReadShong: eluDetail)
        self.present(kiopGDSS, animated: true)
    }
    
    @objc  func checkNadOkayot(gsddBu:UIButton) {
        gsddBu.isSelected = !gsddBu.isSelected
        UserDefaults.standard.set(gsddBu.isSelected, forKey: "IhaveREadNadOkayot")
    }
    
 
  
    //to email
    
    @objc  func elaiolloginNadOkayot() {
        if UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot") != true {
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "please read and agree to our privacy and terms at first!!!")
            return
        }
        self.navigationController?.pushViewController(GSDDEmaillogadComin.init(), animated: true)
     
    }

    var ifNots:Bool = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if ifNots == false && UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot") != true{
            guesssELUA()
            ifNots = true
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        let staeuButon = view.viewWithTag(54) as? UIButton
//        
//        staeuButon?.isSelected = UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot")
//       
        updatePrivacyAgreeStatusped()
    }
    //quick login
    @objc  func QuickadNadOkayot() {
        if UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot") != true {
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "please read and agree to our privacy and terms at first!!!")
            return
        }
        
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("Logging in...")
        gsdd_loadActiveViw.begin_GSDDAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: "Tourist mode login successful ✔")
            
            
            
            
            AppDelegate.canenterInForamtVC()
        }
        
        
        let creteuid = "76990987"
        var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
        
        if let yxaccount = areadyExsisteduserInfoGSDD.filter({ udhurGS in
            return udhurGS["gsddUID"] == "76990987"
        }).first {
            GSDDEmaillogadComin.logUserImageIcon = UIImage.init(named:"topersoniconDGSS" )
            UserDefaults.standard.set(creteuid, forKey: "currentLogGSDDUID")
            GSDDDALoaing.chanGSDD.signinyhuGSDD = GSDDAbountUserinfo.init(defauletUser: yxaccount)
        }
//        let bullftext = AppDelegate.descBABAString(upcaseGS: "NbUhLbL")
        
            
           
           
//            let createGSDduser =  ["gsddUID":"76990987",
//                                "gsddNjmet":"Tourist mode",
//                                "gsddPIav":"topersoniconDGSS",
//                                "guessUserBrief":bullftext,
//                                "gussUSerPayCount":"0",
//                                "loginEmailGSDD":"tourist090@gmai.com"
//                                  
//            ]
            
//            areadyExsisteduserInfoGSDD.append(createGSDduser)
//            UserDefaults.standard.set(areadyExsisteduserInfoGSDD, forKey: "ExsisteduserInfoGSDD")
       
//        GSDDDALoaing.chanGSDD.signinyhuGSDD = GSDDAbountUserinfo.init(gsddUID: creteuid, gsddNjmet: bullftext, gsddPIav: "topersoniconDGSS", gsddVBrief: bullftext,loginEmailGSDD: "tourist090@gmai.com", gussUSerPayCount:"0")
              
            
        
     
    }
    
    @objc func updatePrivacyAgreeStatusped() {
        let staeuButon = view.viewWithTag(54) as? UIButton
        
        staeuButon?.isSelected = (UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot") == true)
        
    }

    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
            if URL.scheme == "privacy" {
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
                return false
            }
        
        
        if URL.scheme == "terms" {
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
            let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: " Terms  of  Service ", texfReadShong: eluDetail)
            self.present(kiopGDSS, animated: true)
            return false
        }
        
           
        return true
       
    }
}


