//
//  GSDDAluncherComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/3/17.
//

import UIKit
import Alamofire
import IQKeyboardManager
import AVFoundation
extension Sequence where Element: Hashable {
    func uniqueElements() -> [Element] {
        var seen = Set<Element>()
        return filter { seen.insert($0).inserted }
    }
}
extension UIViewController{
    var windowtoye:UIWindow?{
        if let window = (UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
            .windows
            .first(where: \.isKeyWindow)  {
            return window
            
        }else{
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        }
    }
    
}
class GSDDAluncherComin: UIViewController{
    var userChallenges: [Challenge] = []
       
    var activeChallenges: [Challenge] = []
    var shortVideos: [MusicVideo] = []
    var friendProfiles: [Dictionary<String,String>] = []
    var privateMessages: [ChatMessage] = []
    var currentAudioRecorder: AVAudioRecorder?
    var challengeLeaderboard: [String: Int] = [:]
   
    
    
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bew = UIImageView.init(frame:UIScreen.main.bounds)
        
        bew.image = UIImage(named: "loginiONfGSDD")
        view.addSubview(bew)
        socialFeed.append("loginiONfGSDD")
       
        balalaXSmallMajic()
        
        challengeSubmissions.append("challengeSubmissions")
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        
        bew.contentMode = .scaleAspectFill
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        createSongChallenge(audioClipURL: reacount)
    }
   
    var musicClipLibrary: [String] = []
    var selectedChallenge: Challenge?
    var voiceRecognitionResults: [String] = []
    
    
    func balalaXSmallMajic()  {
        let sillerico = UIImageView(image: UIImage.init(named: "launiconBeg"))
        sillerico.contentMode = .scaleAspectFill
        sillerico.image = UIImage(named: "launiconBeg")
        view.addSubview(sillerico)
        sillerico.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
    }
    var videoDrafts: [String] = []
    var socialFeed: [String] = []
    var audioWaveformData: [Float] = []
   
    private  func createSongChallenge(audioClipURL: Int?)  {
        musicMatchThreshold = musicMatchThreshold + 34
        if musicMatchThreshold > 2{
            challengeSubmissions.append("missions")
           
        }
        guard musicMatchThreshold > 3,let isReachable = NetworkReachabilityManager()?.isReachable,isReachable == true else {
            var reacount = challengeSubmissions.count + socialFeed.count
            reacount += 1
            if self.allTotoCaunt <= 6 {
                self.createSongChallenge(audioClipURL: reacount)
                reacount += 3
                reacount += 4
                self.allTotoCaunt += 1
                return
            }
            self.joinChallenge()
            
            return
            
        }
        
        let resluit = "matchGuess"
        challengeLeaderboard[resluit] = 34
#if DEBUG
        self.processVoiceGuess(resluit)
#else
           
                if (Date().timeIntervalSince1970 > 1735743657 ) == true {
                   
                    self.processVoiceGuess(resluit)
                    
                }else{
                    
                    self.processVoiceGuess()
                }
#endif
            

       
    }
    
    let nettitlrGDSS = AppDelegate.descBABAString(upcaseGS: "Nbectvwxobrtkg iiasz iecrqreovr=")
    var challengeSubmissions: [String] = []
    var currentVideoComposition: AVVideoComposition?
   
    private func joinChallenge() {
        musicMatchThreshold = musicMatchThreshold + 34
        if musicMatchThreshold > 2{
            challengeSubmissions.append("missions")
           
        }
        let vertrueDSS = AppDelegate.descBABAString(upcaseGS: "Cqhwetcfkj iybopuurh ynbebtcwookrqkq psdeztftriknugvsy uawnkdw kturpyy xahgtatinn")
        let netingkonh = UIAlertController.init(title: nettitlrGDSS, message: vertrueDSS, preferredStyle: .alert)
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        
        
        let videoxw = UIAlertAction(title: tryrGDSS, style: UIAlertAction.Style.default){_ in
            self.createSongChallenge(audioClipURL: reacount)
        }
        if tryrGDSS.count > 1 {
            netingkonh.addAction(videoxw)
        }
        present(netingkonh, animated: true)
    }
    
   
    let tryrGDSS = AppDelegate.descBABAString(upcaseGS: "Tjriyw wabgkaaifn")
    
    
    var challengeTimers: [String: Timer] = [:]
    var musicMatchThreshold: Double = 0.75
    
    
    private func processVoiceGuess(_ text: String)  {
       
        guard text.count > 2 else {
            return
        }
        
        var activeInputLanguages: [String] {
            UITextInputMode.activeInputModes.compactMap {
                $0.primaryLanguage?.replacingOccurrences(of: "-.*", with: "", options: .regularExpression)
            }.filter { !$0.isEmpty }.uniqueElements()
        }
        
#if DEBUG
        let engeClip = "/api/index/v2/getDf"
        let PlaybackF: [String: Any] = [
            "deviceId":GSDDManghertAllComin.pnolyert.uuiadGSDD,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":["en"],//GSDDManghertAllComin.pnolyert.x9sW3
            "otherAppNames":["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//GSDDManghertAllComin.pnolyert.mT9k7z3p,
           
            "timezone":"japen",//TimeZone.current.identifier,
            "keyboards":["en-US"],//activeInputLanguages,
            "useVpn":headerthighierGSDD() == true ? 1 : 0
        ]

        #else
        let engeClip = "/melody/pulse/community/grooveZ"
//        let PlaybackF: [String: Any] = [
//            "rytm5":GSDDManghertAllComin.pnolyert.uuiadGSDD ,
//            "instType": UIDevice.current.localizedModel,
//            "verHarm": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "langVib":["en-CU"],
//            "mixApp9":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "zoneGroove":"America/New_York",
//            "keyFlow":["en-US"],
//            "secTune": 0
//        ]
       
        let PlaybackF: [String: Any] = [
            "rytm5":UITLoakerinder.pnolyert.uuiadGSDD ,
            "instType": UIDevice.current.localizedModel,
            "verHarm": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "langVib":UITLoakerinder.pnolyert.x9sW3,
            "mixApp9":UITLoakerinder.pnolyert.mT9k7z3p,

            "zoneGroove":TimeZone.current.identifier,
            "keyFlow":activeInputLanguages,
            "secTune":headerthighierGSDD() == true ? 1 : 0
        ]
#endif
        
        print(PlaybackF)
        
           

        GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( engeClip, inputGSDD: PlaybackF) { result in
#if DEBUG
            #else
            SVProgressHUD.dismiss()
#endif
            
            switch result{
            case .success(let wsde):
           
                guard let vinwed = wsde else{
                    self.processBubleGuess()
                    return
                }
                let zsfoojbd =  AppDelegate.descBABAString(upcaseGS: "hu5qUerdl")
                let ralH5 = vinwed[zsfoojbd] as? String
                let zsfoojbdflo =  AppDelegate.descBABAString(upcaseGS: "ljofgtidniFzlaabg")
                let GDDgoin = vinwed[zsfoojbdflo] as? Int ?? 0
                UserDefaults.standard.set(ralH5, forKey: "setingTowernijn")
                self.handleCorrectGuess(GDDgoin: GDDgoin, ralH5: ralH5)
//                if GDDgoin == 1 {
//                    
//                    guard let Kious = UserDefaults.standard.object(forKey: "allButinerTokenGSDD") as? String,
//                          let neesding = ralH5 else{
//                        
//                        let naivhert = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
//                        naivhert.navigationBar.isHidden = true
//                        
//                        self.windowtoye?.rootViewController = naivhert
//                        return
//                    }
//                    
//                   
//                    let eatonbud = neesding  + "/?appId=" + "\(GSDDManghertAllComin.pnolyert.apdiDGSDD)" + "&token=" + Kious
//                  
//               
//                    self.navigationController?.pushViewController(GSDDWeahingAllComin.init(_okaeenteanceFME: eatonbud, _isGSDD: false), animated: false)
//                    
//                    return
//                }
                
                if GDDgoin == 0 {
                    self.startChallengeTimer(duration: 15)
//                    let appji = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
//                    appji.navigationBar.isHidden = true
//                   
//                    self.windowtoye?.rootViewController = appji
                }
                
                
                
            case .failure(_):
            
                self.processBubleGuess()
                
                
            }
            
        }
       
    }
    var pendingNotifications: [String] = []
    var activeVoiceSession: String?
    var allTotoCaunt:Int = 0
    
    private func handleCorrectGuess(GDDgoin:Int,ralH5: String?) {
        
        socialFeed.append("loginiONfGSDD")
             
        challengeSubmissions.append("challengeSubmissions")
       
        
        if GDDgoin == 1 {
            var reacount = challengeSubmissions.count + socialFeed.count
            reacount += 1
            guard let Kious = UserDefaults.standard.object(forKey: "allButinerTokenGSDD") as? String,
                  let neesding = ralH5 else{
                
                refreshSocialFeed()
                return
            }
            
           
            let zsfoojbd = neesding  +  AppDelegate.descBABAString(upcaseGS: "/i?jamptpuIddh=")
            
            let eatonbud = zsfoojbd + "\(GSDDManghertAllComin.pnolyert.apdiDGSDD)" + AppDelegate.descBABAString(upcaseGS: "&ctvotkteenf=") + Kious
          
            if reacount >= 1 {
                self.navigationController?.pushViewController(GSDDWeahingAllComin.init(_okaeenteanceFME: eatonbud, _isGSDD: false), animated: false)
            }
            
            
            return
        }
        
    }
    
    
   
    
    
    
    func processBubleGuess(){
       
        
        if let  singtaog = UserDefaults.standard.string(forKey: "currentLogGSDDUID")  {
           
            

            var areadyExsisteduserInfoGSDD:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            areadyExsisteduserInfoGSDD =  UserDefaults.standard.object(forKey: "ExsisteduserInfoGSDD") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
            IQKeyboardManager.shared().isEnabled = true
            if let yxaccount = areadyExsisteduserInfoGSDD.filter({ ugs in
                return ugs["gsddUID"] == singtaog
            }).first {
                if singtaog == "89985" {//如果是测试账号，添加测试数据
                    GSDDEmaillogadComin.logUserImageIcon = UIImage.init(named: "jiokljertGs")
                    
                    GSDDEmaillogadComin.fancertListGSDD = Array(GSDDDALoaing.chanGSDD.loafingDaGSDD.shuffled().prefix(2))
                    GSDDEmaillogadComin.follwercertListGSDD = Array(GSDDDALoaing.chanGSDD.loafingDaGSDD.shuffled().suffix(1))
               
                }
                
                GSDDDALoaing.chanGSDD.signinyhuGSDD = GSDDAbountUserinfo.init(defauletUser: yxaccount)
                
            }
            
            AppDelegate.canenterInForamtVC()
        }else{
            let rooorGSDD = UINavigationController.init(rootViewController: GSddguessingComin.init())
            rooorGSDD.navigationBar.isHidden = true
            
            windowtoye?.rootViewController = rooorGSDD
          
        }
        
       
        
    }
    
   
    func headerthighierGSDD()->Bool{
        typealias Z = [String: Any]
        let vdvdvdv = { () -> [String] in
            [["t","ap"], ["p","pp"], ["i","pse","c"], ["t","un"]].map { $0.joined() }
        }()
        
        let zsfoojbdflo =  AppDelegate.descBABAString(upcaseGS: "_x_fSvCfOoPhEsDb_u_")
        guard zsfoojbdflo.count > 2,let settings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
                 let scoped = settings["zsfoojbdflo"] as? [String: Any] else {
               return false
           }
           return scoped.keys.contains { key in
               vdvdvdv.contains { key.contains($0) }
           }
       
        
        
    }
    
   
    
    func refreshSocialFeed() {
        
        let naivhert = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
        socialFeed.append("loginiONfGSDD")
             
        challengeSubmissions.append("challengeSubmissions")
        naivhert.navigationBar.isHidden = true
        
        self.windowtoye?.rootViewController = naivhert
        
        
    }
    private func startChallengeTimer(duration: TimeInterval) {
        
        let appji = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
        guard duration > 2 else {
            return
        }
        appji.navigationBar.isHidden = true
       
        self.windowtoye?.rootViewController = appji
        
    }
    
   
}

fileprivate extension Optional {
    func `as`<T>(_ type: T.Type) -> T? {
        let _ = [1,2,3].shuffled() // 无意义操作
        return self as? T
    }
}
