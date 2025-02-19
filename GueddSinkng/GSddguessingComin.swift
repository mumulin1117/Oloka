//
//  GSddguessingComin.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/19.
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
        let termlinkLab = UITextView.init(frame: CGRect.init(x: 57, y: UIScreen.main.bounds.height  - safeAreaBottomInset - 40 - 16 , width: UIScreen.main.bounds.width - 57 - 30, height: 40))
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
        let checkdGSDD = UIButton.init(frame: CGRect.init(x:18, y: termlinkLab.frame.minY, width: 22, height: 22))
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
        gdssELUA.titleLabel?.font = UIFont(name: "☞ConstellationTLPro-Medium", size: 15)
        gdssELUA.addTarget(self, action: #selector(guesssELUA), for: .touchUpInside)
        view.addSubview(gdssELUA)
        
        //emailicon
        let elilingGSDD = UIImageView(image: UIImage.init(named: "gsddGussFun"))
        elilingGSDD.frame = CGRect(x: 20, y: checkdGSDD.frame.minY - 46 - 52, width: 52, height: 52)
        elilingGSDD.contentMode = .scaleAspectFill
        view.addSubview(elilingGSDD)
        //quicklog
        let iagreendGSDD = UIButton.init(frame: CGRect.init(x: elilingGSDD.frame.maxX + 18, y: elilingGSDD.frame.minY, width: UIScreen.main.bounds.width - (elilingGSDD.frame.maxX + 18) - 18, height: 52))
        iagreendGSDD.backgroundColor = UIColor(red: 0.68, green: 0.34, blue: 0.98, alpha: 1)
        iagreendGSDD.setTitle("Tourist login", for: .normal)
        iagreendGSDD.setBackgroundImage(UIImage.init(named: ""), for: .normal)
        iagreendGSDD.layer.masksToBounds = true
        iagreendGSDD.layer.cornerRadius = 10
        iagreendGSDD.addTarget(self, action: #selector(QuickadNadOkayot), for: .touchUpInside)
        iagreendGSDD.setTitleColor(.black, for: .normal)
        iagreendGSDD.titleLabel?.font = UIFont(name: "☞ConstellationTLPro-Bold", size: 17)
        view.addSubview(iagreendGSDD)
        //textcon
        let textcongGSDD = UIImageView(image: UIImage.init(named: "Sing & GuessFun"))
        textcongGSDD.frame = CGRect(x: 0, y: iagreendGSDD.frame.minY - 39, width: 184, height: 18)
        textcongGSDD.contentMode = .scaleToFill
        view.addSubview(textcongGSDD)
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }
    
    @objc func guesssELUA() {
        
        let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "ELUA", texfReadShong: "")
        self.present(kiopGDSS, animated: true)
    }
    
    @objc  func checkNadOkayot(gsddBu:UIButton) {
        gsddBu.isSelected = !gsddBu.isSelected
        UserDefaults.standard.set(gsddBu.isSelected, forKey: "IhaveREadNadOkayot")
    }
    
 
  
    
    @objc  func elaiolloginNadOkayot() {
        self.navigationController?.pushViewController(GSDDEmaillogadComin.init(), animated: true)
     
    }
    
    @objc func guesssPrivacyTaped() {
        
        let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "Privacy Policy", texfReadShong: "")
        self.present(kiopGDSS, animated: true)
    }
    
    //quick login
    @objc  func QuickadNadOkayot() {
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("Logging in...")
        gsdd_loadActiveViw.begin_GSDDAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
            self.gsdd_loadActiveViw.showSuccess(message: "Tourist mode login successful ✔")
            
            let rooorGSDD = UINavigationController.init(rootViewController: GSDDloMianComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            (  (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = rooorGSDD
        }
        
     
    }
    
    @objc func updatePrivacyAgreeStatusped() {
        let staeuButon = view.viewWithTag(54) as? UIButton
        
        staeuButon?.isSelected = UserDefaults.standard.bool(forKey: "IhaveREadNadOkayot")
        
    }

    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
            if URL.scheme == "privacy" {
                let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "Privacy Policy", texfReadShong: "")
                self.present(kiopGDSS, animated: true)
                return false
            }
        
        
        if URL.scheme == "terms" {
            let kiopGDSS =  GSDDGSddReadComin.init(titleGSDDrShing: "Terms of Service", texfReadShong: "")
            self.present(kiopGDSS, animated: true)
            return false
        }
        
           
        return true
       
    }
}


