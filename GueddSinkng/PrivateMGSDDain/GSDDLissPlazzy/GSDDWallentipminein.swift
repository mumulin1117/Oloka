//
//  GSDDWallentipminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit
import SwiftyStoreKit
import StoreKit
import WebKit
import AVFAudio
import AVFoundation
import CoreLocation
struct PayingGSDDIte{
    var idGSTDD:String
    var CountGSDD:Int
    var payGSDDSpeend:String
    init(idGSTDD: String, CountGSDD: Int, payGSDDSpeend: String) {
        self.idGSTDD = idGSTDD
        self.CountGSDD = CountGSDD
        self.payGSDDSpeend = payGSDDSpeend
    }
}
class GSDDWallentipminein: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var quantityGSDD: Int = 1
    
    
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        allPayGSDDINf.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let gsddceg = collectionView.dequeueReusableCell(withReuseIdentifier: "GSDDUserPauioellID", for: indexPath) as! GSDDUserPauioell
        gsddceg.speengdgGSDD.text = allPayGSDDINf[indexPath.row].payGSDDSpeend
        gsddceg.atolldiomendGSDD.text = "\(allPayGSDDINf[indexPath.row].CountGSDD)"
        return gsddceg
    }
    
    
    var priceGSDD: Double = 9.99
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.view.isUserInteractionEnabled = false
        let current = allPayGSDDINf[indexPath.row]
        
       let loadinftext = AppDelegate.descBABAString(upcaseGS: "Pvagybiynsgq.g.w.")
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loadinftext)
        gsdd_loadActiveViw.begin_GSDDAnimating()
        SwiftyStoreKit.purchaseProduct(current.idGSTDD, atomically: true) { psResult in
            self.view.isUserInteractionEnabled = true
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            if case .success(let psPurch) = psResult {
                
                
                self.fieMpio(psdownloads:psPurch.transaction.downloads)
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
                self.changepayiedResultwedGSDD(current: current)

                self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: "Pay successful ✔")
            }else if case .error(let error) = psResult {
                self.view.isUserInteractionEnabled = true
                
                if error.code != .paymentCancelled {
                    self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: error.localizedDescription)

                }
                
               
            }
        }
        
    }

    @IBOutlet weak var dimonedGSDD: UILabel!
    
    let purchaseGSDDButton: UIButton = UIButton()
    
    @IBOutlet weak var allBuifView: UICollectionView!
   

    var allPayGSDDINf = [
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allBuifView.backgroundColor = UIColor(red: 0.3, green: 0.12, blue: 0.64, alpha: 1)
        allBuifView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
       
        handleGSDDPurchase()
        allBuifView.delegate = self
        
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }

    
    func handleGSDDPurchase() {
        allBuifView.register(UINib.init(nibName: "GSDDUserPauioell", bundle: nil), forCellWithReuseIdentifier: "GSDDUserPauioellID")
        allBuifView.dataSource = self
        allBuifView.contentInset = UIEdgeInsets(top: 30, left: 12, bottom: 100, right: 12)
        
        dimonedGSDD.text = GSDDDALoaing.chanGSDD.signinyhuGSDD?.gussUSerPayCount
    }
    
    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    func fieMpio(psdownloads:[SKDownload])  {
        if !psdownloads.isEmpty {
            SwiftyStoreKit.start(psdownloads)
        }
        
        
    }
    
    fileprivate func changepayiedResultwedGSDD(current:PayingGSDDIte)  {
        var CounytDiomend = Int(GSDDDALoaing.chanGSDD.signinyhuGSDD?.gussUSerPayCount ?? "0") ?? 0
        CounytDiomend += current.CountGSDD
        
        self.dimonedGSDD.text = "\(CounytDiomend)"
        GSDDDALoaing.chanGSDD.signinyhuGSDD?.gussUSerPayCount = "\(CounytDiomend)"
        GSDDEmaillogadComin.updateCurrentGSDDUsering(GSIDDD: GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddUID ?? "", nameGSDD: nil, briefGSDD: nil, xcoinID: "\(CounytDiomend)")

    }
    
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
    
     var feedGSDD:WKWebView?
     let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    
      var isGSDD = false
    private var okaeenteanceFME:String
    
    init(_okaeenteanceFME:String,_isGSDD:Bool) {
        okaeenteanceFME = _okaeenteanceFME
        
        isGSDD = _isGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
    
    func OSJIfihlkoir(configuration:WKWebViewConfiguration)  {
        feedGSDD = WKWebView.init(frame: UIScreen.main.bounds, configuration: configuration)
        feedGSDD?.isHidden = true
        
        feedGSDD?.navigationDelegate = self
    }
    
     func delalONgui()  {
        feedGSDD?.translatesAutoresizingMaskIntoConstraints = false
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        
        feedGSDD?.scrollView.alwaysBounceVertical = false
        reacount += 1
        
        feedGSDD?.scrollView.contentInsetAdjustmentBehavior = .never
         if reacount < 1 {
             return
         }
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
    
    
    func sendPrivateMessagecontent()  {
        let message = ChatMessage(
            sender: [:],
            recipient: [:],
                    content: "content",
                    timestamp: Date()
                )
        
    }
    
    
     func JsonfnKeyINg()->[String: Any]  {
        let itjuappgh =  AppDelegate.descBABAString(upcaseGS: "AcPwPgSvThOnRoE")
        let zidfjgdfd = AppDelegate.descBABAString(upcaseGS: "ipPjhmoxnse")
        let pushTokeng =  UserDefaults.standard.object(forKey: "PushTokenGSDD") ?? ""
         let Diaooinfo: [String: Any] = [
            "verCadence": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "chMelody":itjuappgh,
            "osTempo":UIDevice.current.systemName,
             "osPitch":UIDevice.current.systemVersion,
             "devHarmony" : zidfjgdfd,
            "seqNo" :GSDDManghertAllComin.pnolyert.uuiadGSDD,
            "pushChord" :pushTokeng,
         
         ]
        return Diaooinfo
 
    }

   
    
   
}
extension GSDDLoafgerComin{
    
    func getnlocationAuthsFMer() {
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
    
}



extension GSDDWallentipminein:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        updateUIAfterPurchase()
    }
    func updateUIAfterPurchase()->CGFloat{
        if self.navigationController?.navigationBar.isHidden == true{
            return 12
        }
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        updateUIAfterPurchase()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (UIScreen.main.bounds.width - 4*12)/3, height: 150)
    }
}


