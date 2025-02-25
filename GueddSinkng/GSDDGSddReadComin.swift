//
//  GSDDGSddReadComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit
import SnapKit
//ELUA
class GSDDGSddReadComin: UIViewController {
    var titlerGSDDShing:String
    var texfReadGSDDShong:String
    init(titleGSDDrShing: String, texfReadShong: String) {
        self.titlerGSDDShing = titleGSDDrShing
        self.texfReadGSDDShong = texfReadShong
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nameringGSDD = UIImageView(image: UIImage.init(named: "noReadBdcj"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
      
        view.addSubview(nameringGSDD)
        
        let titRead = UILabel.init()
        titRead.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        titRead.text = titlerGSDDShing
        titRead.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        titRead.textAlignment = .center
        titRead.frame = CGRect.init(x: 0, y: framtipStartinset, width: 250, height: 24)
        titRead.center.x = self.view.center.x
        view.addSubview(titRead)
        
        let texfresad = UITextView.init(frame: CGRect.init(x: 20, y: titRead.frame.maxY + 30, width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height - framtipStartinset - 24 - 30 - safeAreaBottomInset - 80 - 100))
        texfresad.text = texfReadGSDDShong
        texfresad.isEditable = false
        texfresad.isScrollEnabled = true
        texfresad.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        texfresad.textColor = .black
        texfresad.backgroundColor = .clear
        view.addSubview(texfresad)
        
        if  !titlerGSDDShing.contains("ELUA") {
            
            return
        }
        
        let iagreendGSDD = UIButton.init()
        iagreendGSDD.backgroundColor = UIColor(red: 0.68, green: 0.34, blue: 0.98, alpha: 1)
        iagreendGSDD.setTitle("I agree", for: .normal)
        iagreendGSDD.setTitleColor(.white, for: .normal)
        iagreendGSDD.layer.masksToBounds = true
        iagreendGSDD.layer.cornerRadius = 10
        iagreendGSDD.addTarget(self, action: #selector(IhaveREadNadOkayot), for: .touchUpInside)
        view.addSubview(iagreendGSDD)
        iagreendGSDD.snp.makeConstraints { make in
            make.width.equalTo(160)
            make.height.equalTo(60)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-safeAreaBottomInset - 12)
        }
        
        
        let ianoagreeGSDD = UIButton.init()
        ianoagreeGSDD.backgroundColor = .black
        ianoagreeGSDD.setTitle("Cancel", for: .normal)
        ianoagreeGSDD.setTitleColor(.white, for: .normal)
        ianoagreeGSDD.layer.masksToBounds = true
        ianoagreeGSDD.layer.cornerRadius = 10
        ianoagreeGSDD.addTarget(self, action: #selector(IhaveREadNadNotOkayot), for: .touchUpInside)
        view.addSubview(ianoagreeGSDD)
        ianoagreeGSDD.snp.makeConstraints { make in
            make.width.equalTo(160)
            make.height.equalTo(60)
            make.trailing.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-safeAreaBottomInset - 12)
        }
    }
    
    
    @objc  func IhaveREadNadOkayot() {
        UserDefaults.standard.set(true, forKey: "IhaveREadNadOkayot")
        
        NotificationCenter.default.post(name: NSNotification.Name.init("updateReadStataus"), object: nil)
       
        self.dismiss(animated: true)
    }

    @objc  func IhaveREadNadNotOkayot() {
        
        UserDefaults.standard.set(false, forKey: "IhaveREadNadOkayot")
        NotificationCenter.default.post(name: NSNotification.Name.init("updateReadStataus"), object: nil)
        
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
