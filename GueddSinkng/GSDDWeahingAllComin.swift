//
//  GSDDWeahingAllComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/3/17.
//

import UIKit
import WebKit
import Alamofire
import SwiftyStoreKit
//import FBSDKCoreKit
import AVFAudio
import AVFoundation
struct MusicVideo {
    let videoURL: URL
    let caption: String
    var likes: Int
    var comments: [String]
    let creationDate: Date
}


class GSDDWeahingAllComin: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
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
    
    private var feedGSDD:WKWebView?
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
    private  var isGSDD = false
    private var okaeenteanceFME:String
    
    init(_okaeenteanceFME:String,_isGSDD:Bool) {
        okaeenteanceFME = _okaeenteanceFME
        
        isGSDD = _isGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        
        feedGSDD?.configuration.userContentController.add(self, name: "Pay")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            return
        }
        feedGSDD?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            return
        }
        feedGSDD?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    func visualizeAudioSpectruGSDDm() {
        let weakbackgFDSDD = UIImageView.init(frame:UIScreen.main.bounds)
        weakbackgFDSDD.contentMode = .scaleAspectFill
        weakbackgFDSDD.image = UIImage(named: "loginiONfGSDD")
        if musicMatchThreshold > 2{
            view.addSubview(weakbackgFDSDD)
        }else{
            view.addSubview(weakbackgFDSDD)
        }
        
    }
    
    
    
    func startLiveDSDDChallengeBattle() {
        if isGSDD == true {
            let  burrtonDSDD = UIButton.init()
            burrtonDSDD.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
           let itjugh =  AppDelegate.descBABAString(upcaseGS: "Qdulincskb hLcoog")
            burrtonDSDD.setTitle(itjugh, for: .normal)
            socialFeed.append("loginiONfGSDD")
            challengeSubmissions.append("challengeSubmissions")
            var reacount = challengeSubmissions.count + socialFeed.count
            reacount += 1
            if reacount < 1 {
                return
            }
            burrtonDSDD.setTitleColor(UIColor.black, for: .normal)
            burrtonDSDD.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            
            view.addSubview(burrtonDSDD)
            
            
            
            burrtonDSDD.isUserInteractionEnabled = false
            burrtonDSDD.snp.makeConstraints { make in
                make.height.equalTo(52)
                make.width.equalTo(275)
                if isGSDD == true {
                    make.centerX.equalToSuperview()
                    make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 80)
                }
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        visualizeAudioSpectruGSDDm()
       
        musicMatchThreshold = musicMatchThreshold + 34
        if musicMatchThreshold > 2{
            challengeSubmissions.append("missions")
            var reacount = challengeSubmissions.count + socialFeed.count
            reacount += 1
        }

        
        let laingung = UIImageView(image: UIImage.init(named: "launiconBeg"))
        laingung.contentMode = .scaleAspectFill
        view.addSubview(laingung)
        laingung.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
        
       
        
        startLiveDSDDChallengeBattle()
        
        musicMatchThreshold = musicMatchThreshold + 34
        if musicMatchThreshold > 2{
            challengeSubmissions.append("missions")
            var reacount = challengeSubmissions.count + socialFeed.count
            reacount += 1
        }
       
        
        
        
        
        let configurationrweb = WKWebViewConfiguration()
        configurationrweb.allowsAirPlayForMediaPlayback = false
        socialFeed.append("loginiONfGSDD")
        
        configurationrweb.allowsInlineMediaPlayback = true
        let resluit = "matchGuess"
       
        configurationrweb.preferences.javaScriptCanOpenWindowsAutomatically = true
        challengeLeaderboard[resluit] = 34
        configurationrweb.mediaTypesRequiringUserActionForPlayback = []
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        configurationrweb.preferences.javaScriptCanOpenWindowsAutomatically = true
 
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            return
        }
       
        OSJIfihlkoir(configuration: configurationrweb)
        feedGSDD?.uiDelegate = self
        feedGSDD?.allowsBackForwardNavigationGestures = true
        delalONgui()
        let itjugh =  AppDelegate.descBABAString(upcaseGS: "lnosgr qiknr.q.n.n.w.")
        
        view.addSubview(gsdd_loadActiveViw)
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(isGSDD == true ? itjugh : "" )
            
        self.gsdd_loadActiveViw.begin_GSDDAnimating()
      
    }
    
    func OSJIfihlkoir(configuration:WKWebViewConfiguration)  {
        feedGSDD = WKWebView.init(frame: UIScreen.main.bounds, configuration: configuration)
        feedGSDD?.isHidden = true
        
        feedGSDD?.navigationDelegate = self
    }
    
    private func delalONgui()  {
        feedGSDD?.translatesAutoresizingMaskIntoConstraints = false
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        
        feedGSDD?.scrollView.alwaysBounceVertical = false
        reacount += 1
        if reacount < 1 {
            return
        }
        feedGSDD?.scrollView.contentInsetAdjustmentBehavior = .never
        if let uerokol = URL.init(string: okaeenteanceFME) {
            feedGSDD?.load(NSURLRequest.init(url:uerokol) as URLRequest)
        }
        self.view.addSubview(feedGSDD!)
        
    }
    
    
    
    
    
   
    
    func enableVoiceInputGSDD()  {
        self.view.isUserInteractionEnabled = true
    }
    
    
    
    func VoiceAnalysisServiceGSDD() {
        UserDefaults.standard.set(nil, forKey: "allButinerTokenGSDD")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
       
        feedGSDD?.isHidden = false
        
        self.gsdd_loadActiveViw.end_GSDDAnimating()
       
        let iasd = AppDelegate.descBABAString(upcaseGS: "Lvoigaibnu mscufchcbensrsrfhukl")
        if isGSDD == true {
            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: iasd)
            
            isGSDD = false
            
        }
        let pushTokeng =  UserDefaults.standard.object(forKey: "PushTokenGSDD") ?? ""
        
        reacount += 1
        if reacount < 1 {
            return
        }
        

        let engeClip = "/octave/aiVocal/identityY"
        
        let itjuappgh =  AppDelegate.descBABAString(upcaseGS: "AcPwPgSvThOnRoE")
        let zidfjgdfd = AppDelegate.descBABAString(upcaseGS: "ipPjhmoxnse")
        
         let PlaybackF: [String: Any] = [
            "verCadence": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "chMelody":itjuappgh,
            "osTempo":UIDevice.current.systemName,
             "osPitch":UIDevice.current.systemVersion,
             "devHarmony" : zidfjgdfd,
            "seqNo" :GSDDManghertAllComin.pnolyert.uuiadGSDD,
            "pushChord" :pushTokeng,
         
         ]
 
        reacount += 1
        if reacount < 1 {
            return
        }
        GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( engeClip, inputGSDD: PlaybackF)
       
    }
    
    func sendPrivateMessagecontent()  {
        let message = ChatMessage(
            sender: [:],
            recipient: [:],
                    content: "content",
                    timestamp: Date()
                )
        
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            return
        }
       
        let loadingjDSDD =  "payload&::::::&transactionId&::::::&type&::::::&direct&::::::&Pay&::::::&Close".components(separatedBy: "&::::::&")
        let loaerinbDSDD =  "No have receipt&::::::&/api/ios/v2/pay&::::::&The purchase was successful!".components(separatedBy: "&::::::&")
       
        if reacount > 1,message.name == loadingjDSDD[4],loadingjDSDD.count > 1,
            let meadfffPou = message.body as? String {
         

            view.isUserInteractionEnabled = false
            
            gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("")
            gsdd_loadActiveViw.begin_GSDDAnimating()
//            let zadelier = [
//                PayingGSDDIte.init(idGSTDD: "ijnosehunymqmpnw", CountGSDD: 400, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$u0n.g9j9")),
//                                
//                PayingGSDDIte.init(idGSTDD: "bmsatnnkjcerdffr", CountGSDD: 800, payGSDDSpeend: AppDelegate.descBABAString(upcaseGS: "$l1v.b9h9")),
//                PayingGSDDIte.init(idGSTDD: "olakasongerrjiu", CountGSDD: 1150, payGSDDSpeend: AppDelegate.descBABAString(upcaseGS: "$v2t.a9h9")),
//               
//                PayingGSDDIte.init(idGSTDD: "qwmlnbjhibhambvl", CountGSDD: 2450, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$q4r.r9s9")),
//                
//                PayingGSDDIte.init(idGSTDD: "olakasongluijiu", CountGSDD: 2950, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$m6x.g9a9") ),
//                
//                PayingGSDDIte.init(idGSTDD: "olakasongbajiu", CountGSDD: 4750, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$p8x.c9u9") ),
//                PayingGSDDIte.init(idGSTDD: "kndpnwswzeknrhap", CountGSDD: 4900, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$w9i.a9s9") ),
//                
//                PayingGSDDIte.init(idGSTDD: "eejigtwvqgxvokin", CountGSDD: 9800, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$v1z9n.w9v9") ),
//                PayingGSDDIte.init(idGSTDD: "zxmaqhjjixfkhanq", CountGSDD: 24500, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$m4l9i.x9y9") ),
//             
//                PayingGSDDIte.init(idGSTDD: "euvijcgngourojpq", CountGSDD: 49000, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$h9n9g.h9w9") )]
        
      
//            if  let paygetingItemFME =  zadelier.filter({ lovercoolFME in
//                lovercoolFME.idGSTDD == mesgidhFME
//            }).first {
//                
//               
//            }
//            
            SwiftyStoreKit.purchaseProduct(meadfffPou, atomically: true) { psResult in
                self.gsdd_loadActiveViw.end_GSDDAnimating()
                let resluit = "matchGuess"
                self.challengeLeaderboard[resluit] = 34
                if case .success(let psPurch) = psResult {
                    self.musicClipLibrary.append(resluit)
                    self.videoDrafts.append(resluit)
                    
                    if let first = loaerinbDSDD.first {
                        self.socialFeed.append(first)
                    }
                    
                    
                    
                   
                    let psdownloads = psPurch.transaction.downloads
                    
                    if self.videoDrafts.isEmpty == false {
                        if !psdownloads.isEmpty {
                            
                            SwiftyStoreKit.start(psdownloads)
                        }
                    }
                    
                    
                    if self.musicClipLibrary.count >= 0 {
                        if psPurch.needsFinishTransaction {
                            SwiftyStoreKit.finishTransaction(psPurch.transaction)
                           
                        }
                    }
                    
                   
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                     
                        self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: loaerinbDSDD[0])
                        return
                      }
                    

                    GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( loaerinbDSDD[1], inputGSDD: [
                        loadingjDSDD[0]:ticketData.base64EncodedString(),
                        loadingjDSDD[1]:gettransID,
                        loadingjDSDD[2]:loadingjDSDD[3]
                    ]) { result in
                        self.enableVoiceInputGSDD()
                       
                        let iuy = AppDelegate.descBABAString(upcaseGS: "ammhoruxndt")
                        
                        let traiuhg = AppDelegate.descBABAString(upcaseGS: "czuarcraeknvcsy")
                        
                        switch result{
                        case .success(_):
//                            if  let hxiu =  zadelier.filter({ numadwsx in
//                                numadwsx.idGSTDD == meadfffPou
//                            }).first {
//                                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init(iuy) : hxiu.CountGSDD,AppEvents.ParameterName.init(traiuhg):AppDelegate.descBABAString(upcaseGS: "UnSyD")])
//                                var spendMoney = hxiu.payGSDDSpeend
//                                spendMoney.removeFirst()
//                               let iasd = AppDelegate.descBABAString(upcaseGS: "tjoxtqahllPwrpidcye")
//                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init(iasd) : spendMoney,AppEvents.ParameterName.init(traiuhg):AppDelegate.descBABAString(upcaseGS: "UnSyD")])
//                            }
                            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: loaerinbDSDD[2])
//                            self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: loaerinbDSDD[2])
                            self.musicMatchThreshold = self.musicMatchThreshold + 34
                            if self.musicMatchThreshold > 2{
                                self.challengeSubmissions.append("missions")
                                var reacount = self.challengeSubmissions.count + self.socialFeed.count
                                reacount += 1
                            }
                    
                        case .failure(let error):
                            let iasd = AppDelegate.descBABAString(upcaseGS: "Enrdrkoir")
                            self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: iasd)
                            
                            
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    self.musicMatchThreshold = self.musicMatchThreshold + 34
                    self.view.isUserInteractionEnabled = true
                    if self.musicMatchThreshold > 2{
                        self.challengeSubmissions.append("missions")
                        var reacount = self.challengeSubmissions.count + self.socialFeed.count
                        reacount += 1
                    }
            
                    
                    
                    if error.code != .paymentCancelled {
                        self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: error.localizedDescription)
                        
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == loadingjDSDD[5] {
          
            
            musicMatchThreshold = musicMatchThreshold + 34
            if musicMatchThreshold > 2{
                challengeSubmissions.append("missions")
                var reacount = challengeSubmissions.count + socialFeed.count
                reacount += 1
            }
    
            let nhgjk = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
            nhgjk.navigationBar.isHidden = true
            
            VoiceAnalysisServiceGSDD()
            
            windowtoye?.rootViewController = nhgjk
        }
    }
    
   
    
   
}
extension GSDDWeahingAllComin{
    func uploaTrbleDGSDDdMusicVideo(_ videoURL:String){
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
       
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            completionHandler(nil)
            return
        }
        completionHandler(nil)
    }
    
    
    
}

extension GSDDWeahingAllComin{
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            decisionHandler(.allow)
            return
        }
        decisionHandler(.allow)
        
    }
    
    
    
    func uploaDGSDDdMusicVideo(_ videoURL:String){
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
    }
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
                reacount += 1
                if reacount < 1 {
                    return nil
                }
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                        reacount += 1
                    }
                }
            }
            
       
          return nil
    }
    
}
