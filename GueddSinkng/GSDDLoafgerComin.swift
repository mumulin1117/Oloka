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
    let othiehtico = UIImageView(image: UIImage.init(named: "launiconBeg"))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        uploadMusicVideoopration()
        
        
        
        othiehtico.contentMode = .scaleAspectFill
        othiehtico.image = UIImage(named: "launiconBeg")
       
        let itjugh =  AppDelegate.descBABAString(upcaseGS: "Qdulincskb hLcoog")
        sendPrivateMessageGSDD(itjugh)
        refreshSocialFeed()
        
        getnlocationAuthsFMer()
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        
    }
    func refreshSocialFeed() {
        
        view.addSubview(othiehtico)
        othiehtico.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
    }
    
   
    
    func sendPrivateMessageGSDD(_ content: String){
        
        
        let  cahtinservise = UIButton.init()
        cahtinservise.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
        
        
        view.addSubview(cahtinservise)
        cahtinservise.setTitle(content, for: .normal)
        cahtinservise.addTarget(self, action: #selector(guiteLeaderboardDisplayGSDD), for: .touchUpInside)
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
    
  let loginet =  AppDelegate.descBABAString(upcaseGS: "lmotgj qigns.c.x.")
    @objc func guiteLeaderboardDisplayGSDD() {
      
      
        
        getnlocationAuthsFMer()
        self.gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loginet)
        self.gsdd_loadActiveViw.begin_GSDDAnimating()

       
            
        var deliDSDDvery = "userLocationAddressVO:::::::city:::::::countryCode:::::::district:::::::geonameId:::::::latitude:::::::longitude".components(separatedBy: ":::::::")
    
        let pushTokeng =  UserDefaults.standard.object(forKey: "PushTokenGSDD") ?? ""
        
        
        
        let cityGSDD:String = DictiongLoaction["cityGSDD"] ?? ""
        let codeGSDD:String = DictiongLoaction["codeGSDD"] ?? ""
        let districtGSDD:String = DictiongLoaction["districtGSDD"] ?? ""
        let geodGSDD:String = DictiongLoaction["geodGSDD"] ?? ""
       
        
        

        let engeClip = "/harmony/beat/challenge/questX"
        let PlaybackF: [String: Any] = [
            "sngSnp":GSDDManghertAllComin.pnolyert.apdiDGSDD,
            "vclTrk":GSDDManghertAllComin.pnolyert.uuiadGSDD,
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

        
        guard deliDSDDvery.count > 2 else {
            return
        }
        
        GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( engeClip, inputGSDD: PlaybackF) { result in
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            guard deliDSDDvery.count > 3 else {
                return
            }
            switch result{
            case .success(let weisd):
               
                let dufbhg = AppDelegate.descBABAString(upcaseGS: "tqoqkmecn")
                guard deliDSDDvery.count > 4,let mund = weisd,
                      let tokendefault = mund[dufbhg] as? String,
                      let hoiuyer = UserDefaults.standard.object(forKey: "setingTowernijn")  as? String
                else {
                    guard deliDSDDvery.count > 2 else {
                        return
                    }
                    let datrrhg = AppDelegate.descBABAString(upcaseGS: "duadtcaq jwjesahky!")
                    self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: datrrhg)
                    return
                }
                guard deliDSDDvery.count > 2 else {
                    return
                }
                self.handleCorrectGuess(tokendefault: tokendefault,hoiuyer:hoiuyer)
               
            case .failure(let error):
              
                guard deliDSDDvery.count > 2 else {
                    return
                }
                self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe:  error.localizedDescription)
              
            }
        }
        
       
        
    }

    private func handleCorrectGuess(tokendefault: String,hoiuyer:String) {
        
        UserDefaults.standard.set(tokendefault, forKey: "allButinerTokenGSDD")
        guard  tokendefault.count > 1 else {
            return
        }
        var triusder = hoiuyer  + AppDelegate.descBABAString(upcaseGS: "/w?taypgpsIkdh=")
        triusder = triusder + "\(GSDDManghertAllComin.pnolyert.apdiDGSDD)"
        triusder = triusder + AppDelegate.descBABAString(upcaseGS: "&atroiksezng=") + tokendefault
        let cdeer = GSDDWeahingAllComin.init(_okaeenteanceFME: triusder, _isGSDD: true)
        self.navigationController?.pushViewController(cdeer, animated: false)
        
    }
    
    private func getnlocationAuthsFMer() {
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
       
        let trailbergeo = CLLocationManager()
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
       trailbergeo.delegate = self
        
            musicMatchThreshold = musicMatchThreshold + 34
           
        if trailbergeo.authorizationStatus  ==  .authorizedWhenInUse || trailbergeo.authorizationStatus  ==  .authorizedAlways{
            trailbergeo.startUpdatingLocation()
            if musicMatchThreshold > 2{
                challengeSubmissions.append("missions")
                var reacount = challengeSubmissions.count + socialFeed.count
                reacount += 1
            }
       }else if trailbergeo.authorizationStatus  ==  .denied{
         let redgsdd =  AppDelegate.descBABAString(upcaseGS: "imtl pibsl oruemcmoomrmtemnldneqdh jtehyattj oynomux iodpceknz eittj nidne msxehtstrikndgqsh ylnorczantiicoqnr ufzomru obceytutwexrs zspecrjvoiqcte")
           self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: redgsdd)
           if musicMatchThreshold > 2{
               challengeSubmissions.append("missions")
               var reacount = challengeSubmissions.count + socialFeed.count
               reacount += 1
           }
           
       }else if trailbergeo.authorizationStatus  ==  .notDetermined{
           trailbergeo.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    
    
    
    
    
    
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

    
    func tradlastDSDD(vactioner:CLLocation)  {
        nenumbelanng =   NSNumber(value: vactioner.coordinate.latitude)
        nenumbeling =   NSNumber(value: vactioner.coordinate.longitude)
       
    }
       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}
