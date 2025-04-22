//
//  GSDDloMianChangeCell.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/20.
//

import UIKit
import CoreLocation

class GSDDgussMainView: UIView {

    @IBOutlet weak var usGSDDPivc: UIImageView!
    
    
    
    @IBOutlet weak var playingmuscioGSDD: UIButton!
    
    
    @IBOutlet weak var ranGSDDIcon: UIImageView!
    
    
    
    @IBOutlet weak var repoiUtingGSDD: UIButton!
    
    class func loadFromNib() -> GSDDgussMainView {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: String(describing: self), bundle: bundle)
        return nib.instantiate(withOwner: nil, options: nil).first as! GSDDgussMainView
    }
    
  
    
 
    //
//    override init(frame: CGRect) {
//           super.init(frame: frame)
//           commonInit()
//       }
//       
//       required init?(coder aDecoder: NSCoder) {
//           super.init(coder: aDecoder)
//           commonInit()
//       }
//       
//       // MARK: - 公共初始化方法
//       private func commonInit() {
//           // 加载 XIB
//           let bundle = Bundle(for: type(of: self))
//           let nib = UINib(nibName: "GSDDgussMainView", bundle: nil)
//           guard let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
//               fatalError("Failed to load XIB")
//           }
//           
//           // 设置布局
//           contentView.frame = bounds
//           contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//           addSubview(contentView)
//           
//         
//       }
    
}
extension GSDDLoafgerComin{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let vactioner = locations.last else {
            return
        }
        
       
        let resluit = "matchGuess"
              
        challengeLeaderboard[resluit] = 34
  

        let fangedo = CLGeocoder()
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        
        fangedo.reverseGeocodeLocation(vactioner) { [self] (plcaevfg, error) in
            
            if error != nil {
                
                return
            }
           
            guard let floaibder = plcaevfg?.first else { return }
            
            DictiongLoaction["cityGSDD"] = floaibder.locality ?? ""
            
             DictiongLoaction["codeGSDD"] = floaibder.country ?? ""
             DictiongLoaction["districtGSDD"] =  floaibder.subLocality  ?? ""
            DictiongLoaction["geodGSDD"] = floaibder.administrativeArea  ?? ""
           
            
         
         
         
            
        }
        
       
        
    }

    
}
