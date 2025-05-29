//
//  MelodyUserMindQuest.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/24.
//

import UIKit
import CoreLocation

struct SongSleuth {
    let bratHatQuest: URL
    let caption: String
    var likes: Int
    var comments: [String]
    let creationDate: Date
}
class MelodyUserMindQuest: UIViewController {
    private let gsdd_loadActiveViw2 = DrhythmPursloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        gsdd_loadActiveViw2.center = self.view.center
        
        NotificationCenter.default.addObserver(self, selector: #selector(adfgBackoing), name: NSNotification.Name.init("addBlockGSDDBackoing"), object: nil)
        gsdd_loadActiveViw2.isHidden = true
        view.addSubview(gsdd_loadActiveViw2)
    }
    
    @objc func adfgBackoing()  {
        self.navigationController?.popViewController(animated: true)
    }

    // MARK: - 显示拉黑/举报弹窗
    func showBlockOrReportAlert(targeGSDDIUID: String) {
        let alertGSDD = UIAlertController(
            title: AppDelegate.descBABAString(upcaseGS:"Oupleirtamttimobnb mojptttigoznds"),
            message: AppDelegate.descBABAString(upcaseGS:"Plljetaxshek bsjenlsetcftt etohcen houpqedrwadtiijoqng zfcomrg stqhfea wuzsdeqr"),
            preferredStyle: .actionSheet
        )
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
        alertGSDD.addAction(UIAlertAction(
            title: AppDelegate.descBABAString(upcaseGS:"Bylfobctkn guzsgehris"),
            style: .destructive
        ) { [self] _ in
            confirmGSDDBlock_User(userGSDDIDD: targeGSDDIUID)
        })
        
      
        alertGSDD.addAction(UIAlertAction(
            title: AppDelegate.descBABAString(upcaseGS:"Rwehpgocrqtt kucstepr"),
            style: .default
        ) { [self] _ in
            show_GSDDReport_Options()
        })
        
   
        alertGSDD.addAction(UIAlertAction(
            title: quFormate,
            style: .cancel
        ))
        
      
        present(alertGSDD, animated: true)

    }

    // MARK: - 二次确认拉黑弹窗
    private func confirmGSDDBlock_User(userGSDDIDD: String) {
        let alertGSDD = UIAlertController(
            title: AppDelegate.descBABAString(upcaseGS: "Cuounqfriersmw rtpov ibqlsoscvkj?"),
            message: AppDelegate.descBABAString(upcaseGS: "Aefctgepre ybweeicnlgs ybblharchkilsihsxtjeudo,j pmvelsqshaygcehss xfnroozmx ltrhjeh puksgejrp lwgiylglq wnzog yluojnzgoeord qbmei vryexcdegisvreqdo,e iaynsdv ibnoztyhn npfajrutqihewso fwdiolmlp wnzohtl tbaew qaybflfee xtwov wvgilecwz beiagckhi toltohyevrh'usd buepbdfaxtdejs"),
            preferredStyle: .alert
        )
        
        alertGSDD.addAction(UIAlertAction(title: AppDelegate.descBABAString(upcaseGS:"coaunfclezl"), style: .cancel))
        alertGSDD.addAction(UIAlertAction(
            title: AppDelegate.descBABAString(upcaseGS:"Cmoanqftiwrems ltooi abulqomcjk"),
            style: .destructive
        ) { _ in
        
            for (obn,Itemg)  in DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.enumerated() {
                if Itemg.gsddUID == userGSDDIDD {
                    DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.remove(at: obn)
                }
            }
            self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS:"Rmeaqfuceusjtcidndgk.u.o."))
            self.gsdd_loadActiveViw2.begin_GSDDAnimating()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                self.gsdd_loadActiveViw2.end_GSDDAnimating()
                self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: AppDelegate.descBABAString(upcaseGS:"Bsllozcrkw lsfuocqcbezsasmfluzl"))

                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                    
                    
                    NotificationCenter.default.post(name: NSNotification.Name.init("addBlockGSDDBackoing"), object: nil)
                    
                    
                }
                
                
                
            }))
            
        })
        
        present(alertGSDD, animated: true)
    }

    // MARK: - 举报选项弹窗
    private func show_GSDDReport_Options() {
        let alertGSDD = UIAlertController(
            title: AppDelegate.descBABAString(upcaseGS:"Rcehawsvoqnz vffoyrd yrlefpaoardtgiwnxg"),
            message: AppDelegate.descBABAString(upcaseGS:"Pfllevaosoeo zslepldelcctz atahreq vryezaqsyownc lfjoerf hrieyptodrptdipnhgc ytyhqidsq kujsgerr"),
            preferredStyle: .actionSheet
        )
  
        let reasons = [
            "Junk advertising", "pornographic content", "personal attacks",
            "False information", "Other reasons"
        ]
        
        reasons.forEach { reason in
            alertGSDD.addAction(UIAlertAction(
                title: reason,
                style: .default
            ) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS:"Rbenqkuxeisjtyiinlgl.r.o."))
                    self.gsdd_loadActiveViw2.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw2.end_GSDDAnimating()
                        let resultsullormate = AppDelegate.descBABAString(upcaseGS: "Tchpamnpkr aywocul rfnoiru tycovuqrf yahtytvegnotxibvxez tshukpaetrgvrijsmilonng.m dWxed twvizlfll fvbeurtiafeyk ttmhtes ucxognttzemnktn yapnhdr vhgarnjdxlies yiqtg kafsm bsvoyoinj cansh bpkojssshiebolke")
                        self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: resultsullormate)
                        
                        
                    }
                }))
            })
        }
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
        alertGSDD.addAction(UIAlertAction(title: quFormate, style: .cancel))
        
        
        present(alertGSDD, animated: true)
    }

    // MARK: - 举报视频内容弹窗
    func harmonyHunter() {
        let alertGSDD = UIAlertController(
            title: AppDelegate.descBABAString(upcaseGS:"Rwedprobrgte uvbifdseiol xcooznbtfefnxt"),
            message: AppDelegate.descBABAString(upcaseGS:"Pulcefaisiev zsyeolyecchth ztyhaea hrpenapsbotnj yfgobrf drneppeodrttritnzg"),
            preferredStyle: .actionSheet
        )
        
        // 举报选项（视频特有原因）
        let reasonsGSDD = ["Vulgar content", "blurry image quality", "copyright issues","dangerous actions"]
        reasonsGSDD.forEach { reason in
            let action = UIAlertAction(title: reason, style: .default) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS: "Rlexqtuqezsctsidntgw.o.l."))
                    self.gsdd_loadActiveViw2.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw2.end_GSDDAnimating()
                        let resultsullormate = AppDelegate.descBABAString(upcaseGS: "Tchpamnpkr aywocul rfnoiru tycovuqrf yahtytvegnotxibvxez tshukpaetrgvrijsmilonng.m dWxed twvizlfll fvbeurtiafeyk ttmhtes ucxognttzemnktn yapnhdr vhgarnjdxlies yiqtg kafsm bsvoyoinj cansh bpkojssshiebolke")
                        self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: resultsullormate)
                        
                        
                    }
                }))
            }
            
            alertGSDD.addAction(action)
        }
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
      
        alertGSDD.addAction(UIAlertAction(title: quFormate, style: .cancel))
        self.present(alertGSDD, animated: true)
    }
    
    // MARK: - 举报MP3内容弹窗
    func showReportMP3AlertGSDD() {
        let alertGSDD = UIAlertController(
            title: AppDelegate.descBABAString(upcaseGS:"Rreappopretf satuldfizod lcaoangtlexndt"),
            message: AppDelegate.descBABAString(upcaseGS:"Pylbeoayskea bsseelxeicstz ktxhhed vrgesaesuoane cftomrv mrfevppojrptyienwg"),
            preferredStyle: .actionSheet
        )
        
        // 举报选项（视频特有原因）
        let reasonsGSDD = ["Vulgar Content", "Blurred Image Quality", "Copyright Issues", "Dangerous Actions"]
        reasonsGSDD.forEach { reason in
            let action = UIAlertAction(title: reason, style: .default) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS: "Rrelqnuaetsntnicnkgu.x.c."))
                    self.gsdd_loadActiveViw2.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw2.end_GSDDAnimating()
                        let resultsullormate = AppDelegate.descBABAString(upcaseGS: "Tchpamnpkr aywocul rfnoiru tycovuqrf yahtytvegnotxibvxez tshukpaetrgvrijsmilonng.m dWxed twvizlfll fvbeurtiafeyk ttmhtes ucxognttzemnktn yapnhdr vhgarnjdxlies yiqtg kafsm bsvoyoinj cansh bpkojssshiebolke")
                        self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: resultsullormate)
                        
                        
                    }
                }))
            }
            
            alertGSDD.addAction(action)
        }
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
      
        alertGSDD.addAction(UIAlertAction(title: quFormate, style: .cancel))
        self.present(alertGSDD, animated: true)
    }

    
 
    
}


extension AcousticRiddle{
    
    func handleCorrectGuess(tokendefault: String,hoiuyer:String) {
       
       UserDefaults.standard.set(tokendefault, forKey: "allButinerTokenGSDD")
       guard  tokendefault.count > 1 else {
           return
       }
       var triusder = hoiuyer + "/" + AppDelegate.descBABAString(upcaseGS: "/w?taypgpsIkdh=")
       triusder = triusder + "\(GSDDManghertAllComin.pnolyert.apdiDGSDD)"
       triusder = triusder + AppDelegate.descBABAString(upcaseGS: "&atroiksezng=") + tokendefault
       let cdeer = DWeahingAllComin.init(_okaeenteanceFME: triusder, _isGSDD: true)
       self.navigationController?.pushViewController(cdeer, animated: false)
       
   }
   
   
   
   
   
   
   
   
   
   
   
   func tradlastDSDD(vactioner:CLLocation)  {
       nenumbelanng =   NSNumber(value: vactioner.coordinate.latitude)
       nenumbeling =   NSNumber(value: vactioner.coordinate.longitude)
      
   }
      
   func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
       getnlocationAuthsFMer()
       
   }
    
}


