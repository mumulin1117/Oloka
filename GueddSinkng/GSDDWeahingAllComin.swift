//
//  GSDDWeahingAllComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/3/17.
//

import UIKit

import Alamofire
import SwiftyStoreKit
import FBSDKCoreKit
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
        feedGSDD?.configuration.userContentController.add(self, name: "Pay")
        feedGSDD?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        feedGSDD?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let weakbackg = UIImageView.init(frame:UIScreen.main.bounds)
        weakbackg.contentMode = .scaleAspectFill
        weakbackg.image = UIImage(named: "loginiONfGSDD")
        view.addSubview(weakbackg)
        
        
        let uinshgeing = UIImageView(image: UIImage.init(named: "launiconBeg"))
        uinshgeing.contentMode = .scaleAspectFill
        uinshgeing.image = UIImage(named: "launiconBeg")
        view.addSubview(uinshgeing)
        uinshgeing.snp.makeConstraints { make in
            make.width.equalTo(126)
            make.height.equalTo(209)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
        }
        
        if isGSDD == true {
            let  burrtonDSDD = UIButton.init()
            burrtonDSDD.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
           
            burrtonDSDD.setTitle("Quick Log", for: .normal)
            burrtonDSDD.setTitleColor(UIColor.black, for: .normal)
            burrtonDSDD.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            
            view.addSubview(burrtonDSDD)
            burrtonDSDD.isUserInteractionEnabled = false
            burrtonDSDD.snp.makeConstraints { make in
                make.height.equalTo(52)
                make.width.equalTo(275)
                
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 80)
            }
        }
        
        
        
         
        let configurationrweb = WKWebViewConfiguration()
        configurationrweb.allowsAirPlayForMediaPlayback = false
        configurationrweb.allowsInlineMediaPlayback = true
        configurationrweb.preferences.javaScriptCanOpenWindowsAutomatically = true
        configurationrweb.mediaTypesRequiringUserActionForPlayback = []
        configurationrweb.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        feedGSDD = WKWebView.init(frame: UIScreen.main.bounds, configuration: configurationrweb)
        feedGSDD?.isHidden = true
        feedGSDD?.translatesAutoresizingMaskIntoConstraints = false
        feedGSDD?.scrollView.alwaysBounceVertical = false
        
        feedGSDD?.scrollView.contentInsetAdjustmentBehavior = .never
        feedGSDD?.navigationDelegate = self
        
        feedGSDD?.uiDelegate = self
        feedGSDD?.allowsBackForwardNavigationGestures = true
   
        if let uerokol = URL.init(string: okaeenteanceFME) {
            feedGSDD?.load(NSURLRequest.init(url:uerokol) as URLRequest)
        }
        self.view.addSubview(feedGSDD!)
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        
        view.addSubview(gsdd_loadActiveViw)
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(isGSDD == true ? "log in....." : "" )
            
        self.gsdd_loadActiveViw.begin_GSDDAnimating()
      
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        feedGSDD?.isHidden = false
        
        self.gsdd_loadActiveViw.end_GSDDAnimating()
       
        
        if isGSDD == true {
            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: "Login successful")
            
            isGSDD = false
            
        }
        let pushTokeng =  UserDefaults.standard.object(forKey: "PushTokenGSDD") ?? ""
#if DEBUG
        let engeClip = "/api/device/save"
         let PlaybackF: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :GSDDManghertAllComin.pnolyert.uuiadGSDD,
            "pushToken" :pushTokeng,

         ]
        #else
        let engeClip = "/octave/aiVocal/identityY"
        
      
         let PlaybackF: [String: Any] = [
            "verCadence": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "chMelody":"APPSTORE",
            "osTempo":UIDevice.current.systemName,
             "osPitch":UIDevice.current.systemVersion,
             "devHarmony" : "iPhone",
            "seqNo" :UITLoakerinder.pnolyert.uuiadGSDD,
            "pushChord" :pushTokeng,
         
         ]
#endif
        GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( engeClip, inputGSDD: PlaybackF)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
        let loadingjDSDD =  "payload&::::::&transactionId&::::::&type&::::::&direct&::::::&Pay&::::::&Close".components(separatedBy: "&::::::&")
        let loaerinbDSDD =  "No have receipt&::::::&/api/ios/v2/pay&::::::&The purchase was successful!".components(separatedBy: "&::::::&")
       
        if message.name == loadingjDSDD[4],
            let meadfffPou = message.body as? String {
         

            view.isUserInteractionEnabled = false
            
            gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("")
            gsdd_loadActiveViw.begin_GSDDAnimating()
            let zadelier = [
                PayingGSDDIte.init(idGSTDD: "ijnosehunymqmpnw", CountGSDD: 400, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$u0n.g9j9")),
                                
                PayingGSDDIte.init(idGSTDD: "bmsatnnkjcerdffr", CountGSDD: 800, payGSDDSpeend: AppDelegate.descBABAString(upcaseGS: "$l1v.b9h9")),
                PayingGSDDIte.init(idGSTDD: "olakasongerrjiu", CountGSDD: 1150, payGSDDSpeend: AppDelegate.descBABAString(upcaseGS: "$v2t.a9h9")),
               
                PayingGSDDIte.init(idGSTDD: "qwmlnbjhibhambvl", CountGSDD: 2450, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$q4r.r9s9")),
                
                PayingGSDDIte.init(idGSTDD: "olakasongluijiu", CountGSDD: 2950, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$m6x.g9a9") ),
                
                PayingGSDDIte.init(idGSTDD: "olakasongbajiu", CountGSDD: 4750, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$p8x.c9u9") ),
                PayingGSDDIte.init(idGSTDD: "kndpnwswzeknrhap", CountGSDD: 4900, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$w9i.a9s9") ),
                
                PayingGSDDIte.init(idGSTDD: "eejigtwvqgxvokin", CountGSDD: 9800, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$v1z9n.w9v9") ),
                PayingGSDDIte.init(idGSTDD: "zxmaqhjjixfkhanq", CountGSDD: 24500, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$m4l9i.x9y9") ),
             
                PayingGSDDIte.init(idGSTDD: "euvijcgngourojpq", CountGSDD: 49000, payGSDDSpeend:AppDelegate.descBABAString(upcaseGS: "$h9n9g.h9w9") )]
        
      
//            if  let paygetingItemFME =  zadelier.filter({ lovercoolFME in
//                lovercoolFME.idGSTDD == mesgidhFME
//            }).first {
//                
//               
//            }
//            
            SwiftyStoreKit.purchaseProduct(meadfffPou, atomically: true) { psResult in
                self.gsdd_loadActiveViw.end_GSDDAnimating()
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
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
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            if  let hxiu =  zadelier.filter({ numadwsx in
                                numadwsx.idGSTDD == meadfffPou
                            }).first {
                                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("amount") : hxiu.CountGSDD,AppEvents.ParameterName.init("currency"):"USD"])
                                var spendMoney = hxiu.payGSDDSpeend
                                spendMoney.removeFirst()
                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("totalPrice") : spendMoney,AppEvents.ParameterName.init("currency"):"USD"])
                            }
                           
                            self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: loaerinbDSDD[2])
                           
                        case .failure(let error):
                            self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Error")
                            
                            
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: error.localizedDescription)
                        
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == loadingjDSDD[5] {
          
            UserDefaults.standard.set(nil, forKey: "useringTwemng")// 清除本地token
           
            let nhgjk = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
            nhgjk.navigationBar.isHidden = true
            
            
            
            windowtoye?.rootViewController = nhgjk
        }
    }
    
   
    
}
