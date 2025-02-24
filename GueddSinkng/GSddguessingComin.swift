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
Latest update: February 21, 2025

1. License Grant

The user obtains a non exclusive, non transferable limited license to use the Oloka application on personal devices, limited to non-commercial entertainment purposes only.

2. Content ownership

The song clips/video content uploaded by users still belong to the original copyright owner
User generated audio/video content retains ownership but grants Oloka a global distribution license
All interface designs, algorithms, and trademarks within the application belong to Oloka
3. Usage restrictions

Prohibited:

Upload infringing music or illegal content
Crack/modify the core functions of the application
Using automated scripts to disrupt and challenge fairness
Posting hate/violent/pornographic and other illegal content

Contact email: Oloka@gmail.com
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
            gsdd_loadActiveViw.showFailure(message: "please read and agree to our privacy and terms at first!!!")
            return
        }
        self.navigationController?.pushViewController(GSDDEmaillogadComin.init(), animated: true)
     
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let staeuButon = view.viewWithTag(54) as? UIButton
        
        staeuButon?.isSelected = UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot")
       
        
    }
    //quick login
    @objc  func QuickadNadOkayot() {
        if UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot") != true {
            gsdd_loadActiveViw.showFailure(message: "please read and agree to our privacy and terms at first!!!")
            return
        }
        
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("Logging in...")
        gsdd_loadActiveViw.begin_GSDDAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
            self.gsdd_loadActiveViw.showSuccess(message: "Tourist mode login successful ✔")
            
            
            
            
            let rooorGSDD = UINavigationController.init(rootViewController: GSDDloMianComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            (  (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = rooorGSDD
        }
        
        
        
        var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
      
        
            let uid = "\(Int.random(in: 55...100))"
            UserDefaults.standard.set(uid, forKey: "currentLogGSDDUID")
           
            let newUserSSIP =  ["gsddUID":uid,
                                                                       
                                "gsddNjmet":"NULL",
                                "gsddPIav":"topersoniconDGSS",
                                "guessUserBrief":"NULL",
                                "gussUSerPayCount":"0",
                                "loginEmailGSDD":"tourist090@gmai.com"
                                  
            ]
            
            allUserDataSSIP.append(newUserSSIP)
            UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
            
            "sign up...."
            
            GSDDDALoaing.chanGSDD.signinyhuGSDD = GSDDAbountUserinfo.init(gsddUID: uid, gsddNjmet: "NULL", gsddPIav: "topersoniconDGSS", gsddVBrief: "NULL",loginEmailGSDD: "tourist090@gmai.com", gussUSerPayCount:"0")
              
            
        
     
    }
    
    @objc func updatePrivacyAgreeStatusped() {
        let staeuButon = view.viewWithTag(54) as? UIButton
        
        staeuButon?.isSelected = UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot")
        
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
            let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "Terms of Service", texfReadShong: eluDetail)
            self.present(kiopGDSS, animated: true)
            return false
        }
        
           
        return true
       
    }
}


