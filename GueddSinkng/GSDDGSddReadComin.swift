//
//  GSDDGSddReadComin.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/19.
//

import UIKit

class GSDDGSddReadComin: UIViewController {
    var titlerGSDDShing:String
    var texfReadGSDDShong:String
    init(titleGSDDrShing: String, texfReadShong: String) {
        self.titlerGSDDShing = titleGSDDrShing
        self.texfReadGSDDShong = texfReadShong
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nameringGSDD = UIImageView(image: UIImage.init(named: "noReadBdcj"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
      
        view.addSubview(nameringGSDD)
        
        let titRead = UILabel.init()
        titRead.font = UIFont(name: "☞ConstellationTLPro-Bold", size: 20)
        titRead.text = titlerGSDDShing
        titRead.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
       
        titRead.frame = CGRect.init(x: 0, y: framtipStartinset, width: 250, height: 24)
        view.addSubview(titRead)
        
        let texfresad = UITextView.init(frame: CGRect.init(x: 20, y: titRead.frame.maxY + 30, width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height - framtipStartinset - 24 - 30 - safeAreaBottomInset - 80))
        texfresad.text = texfReadGSDDShong
        texfresad.isEditable = false
        texfresad.isScrollEnabled = true
        texfresad.font = UIFont(name: "☞ConstellationTLPro-Medium", size: 15)
        texfresad.textColor = .black
        
        view.addSubview(texfresad)
        
        if  !titlerGSDDShing.contains("ELUA") {
            
            return
        }
        
        let iagreendGSDD = UIButton.init(frame: CGRect.init(x: 20, y: UIScreen.main.bounds.height  - safeAreaBottomInset - 60 - 12, width: 160, height: 60))
        iagreendGSDD.backgroundColor = UIColor(red: 0.68, green: 0.34, blue: 0.98, alpha: 1)
        iagreendGSDD.setTitle("I agree", for: .normal)
        iagreendGSDD.setTitleColor(.white, for: .normal)
        iagreendGSDD.layer.masksToBounds = true
        iagreendGSDD.layer.cornerRadius = 10
        iagreendGSDD.addTarget(self, action: #selector(IhaveREadNadOkayot), for: .touchUpInside)
        view.addSubview(iagreendGSDD)
        
        
        
        let ianoagreeGSDD = UIButton.init(frame: CGRect.init(x: 20, y: UIScreen.main.bounds.height  - safeAreaBottomInset - 60 - 12, width: 160, height: 60))
        ianoagreeGSDD.backgroundColor = .black
        ianoagreeGSDD.setTitle("Cancel", for: .normal)
        ianoagreeGSDD.setTitleColor(.white, for: .normal)
        ianoagreeGSDD.layer.masksToBounds = true
        ianoagreeGSDD.layer.cornerRadius = 10
        ianoagreeGSDD.addTarget(self, action: #selector(IhaveREadNadNotOkayot), for: .touchUpInside)
        view.addSubview(iagreendGSDD)
        
    }
    
    
    @objc  func IhaveREadNadOkayot() {
        NotificationCenter.default.post(name: NSNotification.Name.init("updateReadStataus"), object: nil)
        UserDefaults.standard.set(true, forKey: "IhaveREadNadOkayot")
        self.dismiss(animated: true)
    }

    @objc  func IhaveREadNadNotOkayot() {
        NotificationCenter.default.post(name: NSNotification.Name.init("updateReadStataus"), object: nil)
        UserDefaults.standard.set(false, forKey: "IhaveREadNadOkayot")
        self.dismiss(animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
}



extension UIViewController {
    
    var framtipStartinset:CGFloat {
        return UIApplication.shared.statusBarFrame.height + view.safeAreaInsets.top
    }
    
//    var statusBarHeight: CGFloat {
//        return UIApplication.shared.statusBarFrame.height
//    }
//
//    
//    
//    var safeAreaTopInset: CGFloat {
//        return view.safeAreaInsets.top
//    }
    
    var safeAreaBottomInset: CGFloat {
        return view.safeAreaInsets.bottom
    }
    
    
    
}
