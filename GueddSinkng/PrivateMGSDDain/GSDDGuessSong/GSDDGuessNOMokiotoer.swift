//
//  GSDDGuessNOMokiotoer.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit
import WebKit
import SwiftyStoreKit
protocol GSDDGuessNOMokiotoerDelegate {
    func ifSppendToCheckGSDD(boif:Bool)
}


//猜对猜错提示框
class GSDDGuessNOMokiotoer: UIViewController {
    var delegsdd:GSDDGuessNOMokiotoerDelegate?
    
    @IBOutlet weak var emojistatusGSDD: UIImageView!
    
    @IBOutlet weak var bigcontetnGSDD: UILabel!
    @IBOutlet weak var smllcontetnGSDD: UILabel!
   
    @IBOutlet weak var onceAgeinGSDD: UIButton!
    
    @IBOutlet weak var answiergeinGSDD: UIButton!
    
    
    var isCorrentGSDD:Bool = false
    init( isCorrentGSDD: Bool) {
      
        self.isCorrentGSDD = isCorrentGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if isCorrentGSDD == true {
            emojistatusGSDD.image = UIImage(named: "bangbauio")
            bigcontetnGSDD.text = "Bingo!"
            smllcontetnGSDD.text = "You guessed it right! Well done!"
            onceAgeinGSDD.isHidden = true
            
            answiergeinGSDD.setTitle("I Know", for: .normal)
            answiergeinGSDD.setImage(nil, for: .normal)
        }
    }


    @IBAction func answeiGDSSD(_ sender: UIButton) {
         if isCorrentGSDD == true  {
            //我知道
             self.dismiss(animated: true)
         }else{
            //花钱知道答案
          
             var CounytDiomend = Int(GSDDDALoaing.chanGSDD.signinyhuGSDD?.gussUSerPayCount ?? "0") ?? 0
             
             if CounytDiomend  < 100 {
                 let relaiony = GSDDWallentipminein.init()
                 
                 self.navigationController?.pushViewController(relaiony, animated: true)
                 return
             }
             
             
             CounytDiomend -= 100
             GSDDDALoaing.chanGSDD.signinyhuGSDD?.gussUSerPayCount = "\(CounytDiomend)"
             GSDDEmaillogadComin.updateCurrentGSDDUsering(GSIDDD: GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddUID ?? "", nameGSDD: nil, briefGSDD: nil, xcoinID: "\(CounytDiomend)")
             //花钱了
             self.dismiss(animated: true)
             if delegsdd != nil {
                 self.delegsdd?.ifSppendToCheckGSDD(boif: true)
             }
         }
        
        
    }
    
    
    @IBAction func onceAgeinGDSSD(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
}
extension GSDDWeahingAllComin{
    func uploaTrbleDGSDDdMusicVideo(_ videoURL:String){
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            return
        }
       
        let loadingjDSDD = AppDelegate.descBABAString(upcaseGS:"pgaaynlaoeagdn&u:t:f:n:m:g:s&ntrrtatnvshakcztritosneIpdx&u:d:p:e:a:j:y&utgyjpuep&k:t:i:o:v:o:x&wdsifreegcvtp&c:s:q:k:h:q:a&yPlabyi&u:e:p:x:x:i:x&mCslsolspe") .components(separatedBy: "&::::::&")
        let loaerinbDSDD =  AppDelegate.descBABAString(upcaseGS:"Nron qhaakvveu orbedcoecicpdtv&y:f:o:y:w:v:i&a/naepeil/uizotsl/cvs2x/rpdayyo&m:d:f:n:t:v:z&iTghoen hpkumrjcihpacsree gwuaesy dsguwcucfeistsqfzuvlg!").components(separatedBy: "&::::::&")
       
        if reacount > 1,message.name == loadingjDSDD[4],loadingjDSDD.count > 1,
            let meadfffPou = message.body as? String {
         

            view.isUserInteractionEnabled = false
            
            gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("")
            gsdd_loadActiveViw.begin_GSDDAnimating()

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

                            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: loaerinbDSDD[2])

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
