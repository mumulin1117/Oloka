//
//  GSDDLoafgerComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/3/17.
//

import UIKit
import CoreLocation

class GSDDLoafgerComin: UIViewController ,CLLocationManagerDelegate {
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
    private let weteranlocatertoolFME = CLLocationManager()
    private let gewotoolFME = CLGeocoder()
    
    
    private var shootersFcituiyFME:String = ""
    private var shootersFcodeFME:String = ""
    private var shootersFdistrrectFME:String = ""
    private   var shootersdeogerFME:String = ""
    private  var shootersFJingduFME:NSNumber = 0.0
    private  var shootersFcweiDuFME:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "loginiONfGSDD")
        view.addSubview(matherlang)
        
        
        let othiehtico = UIImageView(image: UIImage.init(named: "launiconBeg"))
        othiehtico.contentMode = .scaleAspectFill
        othiehtico.image = UIImage(named: "launiconBeg")
        view.addSubview(othiehtico)
        othiehtico.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
        
        let  lsignintouchHTL = UIButton.init()
        lsignintouchHTL.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
       
        lsignintouchHTL.setTitle("Quick Log", for: .normal)
        lsignintouchHTL.setTitleColor(UIColor.black, for: .normal)
        lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        view.addSubview(lsignintouchHTL)
        lsignintouchHTL.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        lsignintouchHTL.snp.makeConstraints { make in
            make.height.equalTo(52)
            make.width.equalTo(275)
            
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 80)
        }
        
        
        
      
        
        
        
        getnlocationAuthsFMer()
        
        weteranlocatertoolFME.delegate = self
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        
    }
    
    @objc func touchEntanceEnterFME() {
      
      
        
        getnlocationAuthsFMer()
        self.gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("log in...")
        self.gsdd_loadActiveViw.begin_GSDDAnimating()

       
            
        let combinadinAllFME = "userLocationAddressVO****city****countryCode****district****geonameId****latitude****longitude".components(separatedBy: "****")
    
        
#if DEBUG
        let adventurepatherFME = "/api/login/v3/quickLogin"
        let versationParamFME: [String: Any] = [
            "appId":GSDDManghertAllComin.pnolyert.appleidSmalllWrite,
            "deviceId":GSDDManghertAllComin.pnolyert.onlyidduserFME,
            "pushToken":AppDelegate.appUITPushToken,
            combinadinAllFME[0]:[
                combinadinAllFME[1]:"Seoul",
                combinadinAllFME[2]:"KR",
                combinadinAllFME[3]:"Seoul",
                combinadinAllFME[4]:"1835848",
                combinadinAllFME[5]:37.5665,
                combinadinAllFME[6]:126.9780
            ]
        ]
        #else
        let adventurepatherFME = "/harmony/beat/challenge/questX"
        let versationParamFME: [String: Any] = [
            "sngSnp":UITLoakerinder.pnolyert.appleidSmalllWrite,
            "vclTrk":UITLoakerinder.pnolyert.onlyidduserFME,
            "ntfRiff":AppDelegate.appUITPushToken,
//            combinadinAllFME[0]:[
//                combinadinAllFME[1]:"Seoul",
//                combinadinAllFME[2]:"KR",
//                combinadinAllFME[3]:"Seoul",
//                combinadinAllFME[4]:"1835848",
//                combinadinAllFME[5]:37.5665,
//                combinadinAllFME[6]:126.9780
//            ]

            combinadinAllFME[0]:[
                combinadinAllFME[1]:shootersFcituiyFME,
                combinadinAllFME[2]:shootersFcodeFME,
                combinadinAllFME[3]:shootersFdistrrectFME,
                combinadinAllFME[4]:shootersdeogerFME,
                combinadinAllFME[5]:shootersFJingduFME,
                combinadinAllFME[6]:shootersFcweiDuFME
            ]
           
            
        ]
#endif
        
       
        
        GSDDManghertAllComin.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
            self.gsdd_loadActiveViw.end_GSDDAnimating()
           
            switch result{
            case .success(let bavuyr):
               

                guard let retro = bavuyr,
                      let getintokeniddFME = retro["token"] as? String,
                      let effortlesslyfme = UserDefaults.standard.object(forKey: "fmeconnetcikiner")  as? String
                else {
                   
                    
                    self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "data weak!")
                    return
                }
                
                UserDefaults.standard.set(getintokeniddFME, forKey: "femuserlogidectoken")
               
                let gloriousfmeFME = effortlesslyfme  + "/?appId=\(GSDDManghertAllComin.pnolyert.appleidSmalllWrite)&token=" + getintokeniddFME
                let maingbu = GSDDWeahingAllComin.init(wonderfulnowing: gloriousfmeFME, islogingpagepalt: true)
                self.navigationController?.pushViewController(maingbu, animated: false)
               
               
            case .failure(let error):
              
               
                self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe:  error.localizedDescription)
              
            }
        }
        
       
        
    }

    
    private func getnlocationAuthsFMer() {
        
        
        if weteranlocatertoolFME.authorizationStatus  ==  .authorizedWhenInUse || weteranlocatertoolFME.authorizationStatus  ==  .authorizedAlways{
            weteranlocatertoolFME.startUpdatingLocation()
          
       }else if weteranlocatertoolFME.authorizationStatus  ==  .denied{
           self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "it is recommended that you open it in settings location for better service")
         
           
       }else if weteranlocatertoolFME.authorizationStatus  ==  .notDetermined{
           weteranlocatertoolFME.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        shootersFJingduFME =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        shootersFcweiDuFME =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

       
        gewotoolFME.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let palvemajfVAF = plcaevfg?.first else { return }
            shootersFdistrrectFME = palvemajfVAF.subLocality  ?? ""
            shootersdeogerFME = palvemajfVAF.administrativeArea  ?? ""

            shootersFcodeFME = palvemajfVAF.country ?? ""
            shootersFcituiyFME = palvemajfVAF.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}
