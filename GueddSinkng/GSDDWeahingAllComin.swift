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

class GSDDWeahingAllComin: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var fmePlaungView:WKWebView?
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
    private  var fmersousifgnin = false
    private var okaeenteanceFME:String
    
    init(wonderfulnowing:String,islogingpagepalt:Bool) {
        okaeenteanceFME = wonderfulnowing
        
        fmersousifgnin = islogingpagepalt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        fmePlaungView?.configuration.userContentController.add(self, name: "Pay")
        fmePlaungView?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        fmePlaungView?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
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
        
        if fmersousifgnin == true {
            let  lsignintouchHTL = UIButton.init()
            lsignintouchHTL.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
           
            lsignintouchHTL.setTitle("Quick Log", for: .normal)
            lsignintouchHTL.setTitleColor(UIColor.black, for: .normal)
            lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            
            view.addSubview(lsignintouchHTL)
            lsignintouchHTL.isUserInteractionEnabled = false
            lsignintouchHTL.snp.makeConstraints { make in
                make.height.equalTo(52)
                make.width.equalTo(275)
                
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 80)
            }
        }
        
        
        
         
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        fmePlaungView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        fmePlaungView?.isHidden = true
        fmePlaungView?.translatesAutoresizingMaskIntoConstraints = false
        fmePlaungView?.scrollView.alwaysBounceVertical = false
        
        fmePlaungView?.scrollView.contentInsetAdjustmentBehavior = .never
        fmePlaungView?.navigationDelegate = self
        
        fmePlaungView?.uiDelegate = self
        fmePlaungView?.allowsBackForwardNavigationGestures = true
   
        if let urewlinsdfme = URL.init(string: okaeenteanceFME) {
            fmePlaungView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(fmePlaungView!)
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        
        view.addSubview(gsdd_loadActiveViw)
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(fmersousifgnin == true ? "log in....." : "" )
            
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
        fmePlaungView?.isHidden = false
        
        self.gsdd_loadActiveViw.end_GSDDAnimating()
       
        
        if fmersousifgnin == true {
            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: "Login successful")
            
            fmersousifgnin = false
            
        }
       
#if DEBUG
        let adventurepatherFME = "/api/device/save"
         let versationParamFME: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :GSDDManghertAllComin.pnolyert.onlyidduserFME,
            "pushToken" :AppDelegate.appUITPushToken,

         ]
        #else
        let adventurepatherFME = "/octave/aiVocal/identityY"
        
      
         let versationParamFME: [String: Any] = [
            "verCadence": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "chMelody":"APPSTORE",
            "osTempo":UIDevice.current.systemName,
             "osPitch":UIDevice.current.systemVersion,
             "devHarmony" : "iPhone",
            "seqNo" :UITLoakerinder.pnolyert.onlyidduserFME,
            "pushChord" :AppDelegate.appUITPushToken,
         
         ]
#endif
        GSDDManghertAllComin.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
        let angagingFME =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
        let oertpinkFME =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
       
        if message.name == angagingFME[4],
            let mesgidhFME = message.body as? String {
         

            view.isUserInteractionEnabled = false
            
            gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("")
            gsdd_loadActiveViw.begin_GSDDAnimating()
            let alllPayblaIDlist = [
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
        
      
//            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
//                lovercoolFME.idGSTDD == mesgidhFME
//            }).first {
//                
//               
//            }
//            
            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
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
                     
                        self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: oertpinkFME[0])
                        return
                      }
                    

                    GSDDManghertAllComin.pnolyert.installEnterRemallLastNetiFME( oertpinkFME[1], stallParFME: [
                        angagingFME[0]:ticketData.base64EncodedString(),
                        angagingFME[1]:gettransID,
                        angagingFME[2]:angagingFME[3]
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
                                lovercoolFME.idGSTDD == mesgidhFME
                            }).first {
                                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("amount") : paygetingItemFME.CountGSDD,AppEvents.ParameterName.init("currency"):"USD"])
                                var spendMoney = paygetingItemFME.payGSDDSpeend
                                spendMoney.removeFirst()
                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("totalPrice") : spendMoney,AppEvents.ParameterName.init("currency"):"USD"])
                            }
                           
                            self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: oertpinkFME[2])
                           
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
            
        }else if message.name == angagingFME[5] {
          
            UserDefaults.standard.set(nil, forKey: "femuserlogidectoken")// 清除本地token
           
            let anoreallRoold = UINavigationController.init(rootViewController: GSDDLoafgerComin.init())
            anoreallRoold.navigationBar.isHidden = true
            
            var windowtoye:UIWindow?
            if let window = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                windowtoye = window
                
            }else{
                windowtoye = UIApplication.shared.windows.first { $0.isKeyWindow }
            }
            
            windowtoye?.rootViewController = anoreallRoold
        }
    }
    
   
    
}
