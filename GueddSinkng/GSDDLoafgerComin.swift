//
//  GSDDLoafgerComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/3/17.
//

import UIKit
import CoreLocation
import AVFAudio
import AVFoundation
struct Challenge {
    let id: String
    let creator: Dictionary<String,String>
    let clipURL: URL
    let type: ChallengeType
    let creationDate: Date
    var duration: TimeInterval = 30.0
}

enum ChallengeType: String, Codable {
    case melody
    case lyrics
    case rhythm
    case hybrid
}


class GSDDLoafgerComin: UIViewController ,CLLocationManagerDelegate {
    var userChallenges: [Challenge] = []
    
    var activeChallenges: [Challenge] = []
    var shortVideos: [MusicVideo] = []
    var friendProfiles: [Dictionary<String,String>] = []
    var privateMessages: [ChatMessage] = []
    var currentAudioRecorder: AVAudioRecorder?
    var challengeLeaderboard: [String: Int] = [:]
    var musicClipLibrary: [String] = []
    var selectedChallenge: Challenge?
    var voiceRecognitionResults: [String] = []
    var videoDrafts: [String] = []
    var socialFeed: [String] = []
    var audioWaveformData: [Float] = []
    var challengeSubmissions: [String] = []
    var currentVideoComposition: AVVideoComposition?
    var challengeTimers: [String: Timer] = [:]
    var musicMatchThreshold: Double = 0.75
    var pendingNotifications: [String] = []
    var activeVoiceSession: String?
    var allTotoCaunt:Int = 0
    
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
    var DictiongLoaction:[String:String] = [:]
    
    private  var nenumbelanng:NSNumber = 0.0
    private  var nenumbeling:NSNumber = 0.0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        uploadMusicVideoopration()
        
        
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
        
        sendPrivateMessageGSDD("Quick Log")
        
        
        getnlocationAuthsFMer()
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        
    }
    
    func sendPrivateMessageGSDD(_ content: String){
        
        
        let  cahtinservise = UIButton.init()
        cahtinservise.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
        
        
        view.addSubview(cahtinservise)
        cahtinservise.setTitle(content, for: .normal)
        cahtinservise.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        cahtinservise.setTitleColor(UIColor.black, for: .normal)
        cahtinservise.snp.makeConstraints { make in
            make.height.equalTo(52)
            make.width.equalTo(275)
            
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 80)
        }
      
        cahtinservise.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)

    }
    
    private func uploadMusicVideoopration()  {
        let centertIomk = UIImageView.init(frame:UIScreen.main.bounds)
        centertIomk.contentMode = .scaleAspectFill
        centertIomk.image = UIImage(named: "loginiONfGSDD")
        view.addSubview(centertIomk)
    }
    
    
    @objc func touchEntanceEnterFME() {
      
      
        
        getnlocationAuthsFMer()
        self.gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("log in...")
        self.gsdd_loadActiveViw.begin_GSDDAnimating()

       
            
        let deliDSDDvery = "userLocationAddressVO:::::::city:::::::countryCode:::::::district:::::::geonameId:::::::latitude:::::::longitude".components(separatedBy: ":::::::")
    
        let pushTokeng =  UserDefaults.standard.object(forKey: "PushTokenGSDD") ?? ""
        
        
        
        let cityGSDD:String = DictiongLoaction["cityGSDD"] ?? ""
        let codeGSDD:String = DictiongLoaction["codeGSDD"] ?? ""
        let districtGSDD:String = DictiongLoaction["districtGSDD"] ?? ""
        let geodGSDD:String = DictiongLoaction["geodGSDD"] ?? ""
       
        
        
        
#if DEBUG
        let engeClip = "/api/login/v3/quickLogin"
        let PlaybackF: [String: Any] = [
            "appId":GSDDManghertAllComin.pnolyert.apdiDGSDD,
            "deviceId":GSDDManghertAllComin.pnolyert.uuiadGSDD,
            "pushToken":pushTokeng,
            deliDSDDvery[0]:[
                deliDSDDvery[1]:"Seoul",
                deliDSDDvery[2]:"KR",
                deliDSDDvery[3]:"Seoul",
                deliDSDDvery[4]:"1835848",
                deliDSDDvery[5]:37.5665,
                deliDSDDvery[6]:126.9780
            ]
        ]
        #else
        let engeClip = "/harmony/beat/challenge/questX"
        let PlaybackF: [String: Any] = [
            "sngSnp":UITLoakerinder.pnolyert.apdiDGSDD,
            "vclTrk":UITLoakerinder.pnolyert.uuiadGSDD,
            "ntfRiff":pushTokeng,
//            deliDSDDvery[0]:[
//                deliDSDDvery[1]:"Seoul",
//                deliDSDDvery[2]:"KR",
//                deliDSDDvery[3]:"Seoul",
//                deliDSDDvery[4]:"1835848",
//                deliDSDDvery[5]:37.5665,
//                deliDSDDvery[6]:126.9780
//            ]

            deliDSDDvery[0]:[
                deliDSDDvery[1]:cityGSDD,
                deliDSDDvery[2]:codeGSDD,
                deliDSDDvery[3]:districtGSDD,
                deliDSDDvery[4]:geodGSDD,
                deliDSDDvery[5]:nenumbelanng,
                deliDSDDvery[6]:nenumbeling
            ]
           
            
        ]
#endif
        
       
        
        GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( engeClip, inputGSDD: PlaybackF) { result in
            self.gsdd_loadActiveViw.end_GSDDAnimating()
           
            switch result{
            case .success(let weisd):
               

                guard let mund = weisd,
                      let tokendefault = mund["token"] as? String,
                      let hoiuyer = UserDefaults.standard.object(forKey: "setingTowernijn")  as? String
                else {
                   
                    
                    self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "data weak!")
                    return
                }
                
                UserDefaults.standard.set(tokendefault, forKey: "useringTwemng")
               
                let triusder = hoiuyer  + "/?appId=" + "\(GSDDManghertAllComin.pnolyert.apdiDGSDD)" + "&token=" + tokendefault
                let cdeer = GSDDWeahingAllComin.init(_okaeenteanceFME: triusder, _isGSDD: true)
                self.navigationController?.pushViewController(cdeer, animated: false)
               
               
            case .failure(let error):
              
               
                self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe:  error.localizedDescription)
              
            }
        }
        
       
        
    }

    
    private func getnlocationAuthsFMer() {
        let trailbergeo = CLLocationManager()
       trailbergeo.delegate = self
        
        if trailbergeo.authorizationStatus  ==  .authorizedWhenInUse || trailbergeo.authorizationStatus  ==  .authorizedAlways{
            trailbergeo.startUpdatingLocation()
          
       }else if trailbergeo.authorizationStatus  ==  .denied{
           self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "it is recommended that you open it in settings location for better service")
         
           
       }else if trailbergeo.authorizationStatus  ==  .notDetermined{
           trailbergeo.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let vactioner = locations.last else {
            return
        }
        
       
        
  

        let fangedo = CLGeocoder()
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
        
        nenumbelanng =   NSNumber(value: vactioner.coordinate.latitude)
        nenumbeling =   NSNumber(value: vactioner.coordinate.longitude)
       
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}
