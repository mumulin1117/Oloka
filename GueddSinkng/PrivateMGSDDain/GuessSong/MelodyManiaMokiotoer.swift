//
//  MelodyManiaMokiotoer.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit
import Hero


//猜歌详情
class MelodyManiaMokiotoer: MelodyUserMindQuest, GSDDGuessNOMokiotoerDelegate {
    func ifSppendToCheckGSDD(boif: Bool) {
        if boif {
            answeiGSDDView.isHidden = false
        }
    }
    private let gsdd_loadActiveViw = DrhythmPursloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    @IBOutlet weak var usGSDDPivc: UIImageView!
    
    @IBOutlet weak var rightAnswertGSDDlbl: UILabel!
    
    @IBOutlet weak var bottomDoneGSDD: UIButton!
    
    @IBOutlet weak var playingmuscioGSDD: UIButton!
    
    
    @IBOutlet weak var enterGSDDIcon: UITextField!
    
    
    @IBOutlet weak var shineStshineview: UIImageView!
    
    
    @IBOutlet weak var redPinkBackGS: UIButton!
    
    
    
    @IBOutlet weak var answeiGSDDView: UIView!
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        playingmuscioGSDD.isSelected = false
        SingOlRecordingGussing.gussinSS.stopPlaingGSDD()
    }
    
    var mudalGSDD: UserformanceShowcase
    init( mudalGSDD: UserformanceShowcase) {
      
        self.mudalGSDD = mudalGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usGSDDPivc.image = UIImage(named: mudalGSDD.gsddPIav)
        hero.isEnabled = true
        redPinkBackGS.addTarget(self, action: #selector(redPinkBackGSRile), for: .touchUpInside)
        rightAnswertGSDDlbl.text = mudalGSDD.gussMusicname
        setupManiPLayScreenViewGSDD()
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }
    
    private func setupManiPLayScreenViewGSDD() {
        usGSDDPivc.layer.masksToBounds = true
        usGSDDPivc.layer.cornerRadius = 20
        
        enterGSDDIcon.attributedPlaceholder = NSAttributedString(string: "Enter a name for the music", attributes: [.foregroundColor:UIColor(red: 1, green: 1, blue: 1, alpha: 1)])
    }
    
    
    
   @objc func redPinkBackGSRile()  {
       SingOlRecordingGussing.gussinSS.stopPlaingGSDD()
       self.dismiss(animated: true)
    }



    @IBAction func suretDonerGSDD(_ sender: UIButton) {
        
        if sender == self.bottomDoneGSDD {
            if let con = enterGSDDIcon.text, con.isEmpty == false{
                if con == self.mudalGSDD.gussMusicname {
                    
                    let modalpresent =   GuessNOMokiotoer.init(isCorrentGSDD: true)
                    
                   
                    
                    modalpresent.delegsdd = self
                    
                    let navivc = UINavigationController.init(rootViewController: modalpresent)
                    navivc.navigationBar.isHidden =  true
                    navivc.modalPresentationStyle = .fullScreen
                    self.present(navivc, animated: true)
                }else{
                    let modalpresent = GuessNOMokiotoer.init(isCorrentGSDD: false)
                   
                    modalpresent.delegsdd = self
                    let navivc = UINavigationController.init(rootViewController: modalpresent)
                    navivc.navigationBar.isHidden =  true
                    navivc.modalPresentationStyle = .fullScreen
                    self.present(navivc, animated: true)
                }
                
                playingmuscioGSDD.isSelected = false
                SingOlRecordingGussing.gussinSS.stopPlaingGSDD()
            }else{
                
                gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Please enter the song name you guessed!")
            }
            return
        }
        
        redPinkBackGSRile()
       
        
        
        
    }
    
    
    
    @IBAction func startPlayingBMusicGSDD(_ sender: UIButton) {
        playingmuscioGSDD.isSelected = !playingmuscioGSDD.isSelected
        if playingmuscioGSDD.isSelected {
            let path = Bundle.main.path(forResource: mudalGSDD.gussMusicname, ofType: "mp3") ?? ""
            let urlPathname = URL(fileURLWithPath: path)
            
          
            
            SingOlRecordingGussing.gussinSS.playingREcordingAudio(getfileURL: urlPathname)
            startShinkAnnation()
        }else{
            SingOlRecordingGussing.gussinSS.stopPlaingGSDD()
            self.shineStshineview.layer.removeAllAnimations()
            self.usGSDDPivc.layer.removeAllAnimations()
        }
        
        
        
       
        
    }
    
    
    
    @IBAction func repoertingContentGSDD(_ sender: UIButton) {
        showReportMP3AlertGSDD()
    }
    
    
    func startShinkAnnation()  {
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse, .repeat, .allowUserInteraction], animations: {
            self.shineStshineview.alpha = 0.5
            self.usGSDDPivc.layer.opacity = 0.8
            self.usGSDDPivc.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { _ in
            self.shineStshineview.alpha = 1
            self.usGSDDPivc.layer.opacity = 1
            self.usGSDDPivc.transform = CGAffineTransform.identity
           
        }
    }
    
    
}
extension AcousticRiddle{
    
    @objc func guiteLeaderboardDisplayGSDD() {
      
      
        
        getnlocationAuthsFMer()
        self.gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loginet)
        self.gsdd_loadActiveViw.begin_GSDDAnimating()

       
            
        var deliDSDDvery =  AppDelegate.descBABAString(upcaseGS:"uhspehrcLiomcrastqizoqnlAzdwdlroejsbsvVdOt:s:k:m:t:k:k:lcmiltfyu:m:f:j:d:k:n:lcqoxuhnptqrlydCoofdyeq:f:d:k:t:t:o:bdbiosktfrqikcltl:s:y:r:i:m:b:hgheuoknwadmteoIedw:e:z:u:z:p:t:mlbantbibtmuldhev:u:y:a:n:y:y:elfodnugriptgubdpe").components(separatedBy: ":::::::")
    
        let talentShowcase =  UserDefaults.standard.object(forKey: "VtalentShowcase") ?? ""
        
        
        
        let cityGSDD:String = DictiongLoaction["cityGSDD"] ?? ""
        let codeGSDD:String = DictiongLoaction["codeGSDD"] ?? ""
        let districtGSDD:String = DictiongLoaction["districtGSDD"] ?? ""
        let geodGSDD:String = DictiongLoaction["geodGSDD"] ?? ""
       
        
        

        let Diaooinfo: [String: Any] = [
            "sngSnp":GSDDManghertAllComin.pnolyert.apdiDGSDD,
            "vclTrk":GSDDManghertAllComin.pnolyert.uuiadGSDD,
            "ntfRiff":talentShowcase,

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
        
        GSDDManghertAllComin.pnolyert.anInsainongRootGSDD( "/harmony/beat/challenge/questX", inputGSDD: Diaooinfo) { result in
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
    
}
