//
//  GSDDStaruGuessMokiotoer.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit
import Hero


//猜歌详情
class GSDDStaruGuessMokiotoer: GSDDUserilcomine, GSDDGuessNOMokiotoerDelegate {
    func ifSppendToCheckGSDD(boif: Bool) {
        if boif {
            answeiGSDDView.isHidden = false
        }
    }
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    @IBOutlet weak var usGSDDPivc: UIImageView!
    
    @IBOutlet weak var rightAnswertGSDDlbl: UILabel!
    
    @IBOutlet weak var bottomDoneGSDD: UIButton!
    
    @IBOutlet weak var playingmuscioGSDD: UIButton!
    
    
    @IBOutlet weak var enterGSDDIcon: UITextField!
    
    
    @IBOutlet weak var shineStshineview: UIImageView!
    
    
    @IBOutlet weak var redPinkBackGS: UIButton!
    
    
    
    @IBOutlet weak var answeiGSDDView: UIView!
    
    
    var mudalGSDD: GSDDAbountUserinfo
    init( mudalGSDD: GSDDAbountUserinfo) {
      
        self.mudalGSDD = mudalGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
       GSDDRecordingGussing.gussinSS.stopPlaingGSDD()
       self.dismiss(animated: true)
    }



    @IBAction func suretDonerGSDD(_ sender: UIButton) {
        
        if sender == self.bottomDoneGSDD {
            if let con = enterGSDDIcon.text, con.isEmpty == false{
                if con == self.mudalGSDD.gussMusicname {
                    
                    let modalpresent =   GSDDGuessNOMokiotoer.init(isCorrentGSDD: true)
                    
                   
                    
                    modalpresent.delegsdd = self
                    
                    let navivc = UINavigationController.init(rootViewController: modalpresent)
                    navivc.navigationBar.isHidden =  true
                    navivc.modalPresentationStyle = .fullScreen
                    self.present(navivc, animated: true)
                }else{
                    let modalpresent = GSDDGuessNOMokiotoer.init(isCorrentGSDD: false)
                   
                    modalpresent.delegsdd = self
                    let navivc = UINavigationController.init(rootViewController: modalpresent)
                    navivc.navigationBar.isHidden =  true
                    navivc.modalPresentationStyle = .fullScreen
                    self.present(navivc, animated: true)
                }
            }else{
                
                gsdd_loadActiveViw.showFailure(message: "Please enter the song name you guessed!")
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
            
          
            
            GSDDRecordingGussing.gussinSS.playingREcordingAudio(getfileURL: urlPathname)
            startShinkAnnation()
        }else{
            GSDDRecordingGussing.gussinSS.stopPlaingGSDD()
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
