//
//  GSDDPlazdegtaoDComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit
import Player
class GSDDPlazdegtaoDComin: GSDDUserilcomine {
    
    @IBOutlet weak var ReporitgnVieoGSDD: UIButton!
    
    @IBOutlet weak var vioklNamenGSDD: UILabel!//
    
    
    @IBOutlet weak var zanGSDD: UIButton!
    
    @IBOutlet weak var colGSDD: UIButton!
    
    
    @IBOutlet weak var videokoCoverGSDD: UIImageView!
    
    @IBOutlet weak var lplayrtyGSDD: UIButton!
    
    
    @IBOutlet weak var poinusericonGSDD: UIImageView!
    
    @IBOutlet weak var useringNAmeGS: UILabel!
    
    @IBOutlet weak var videghuContenGS: UILabel!
    
    private var playerGSDD = Player()
    deinit {
        self.playerGSDD.willMove(toParent: nil)
        self.playerGSDD.view.removeFromSuperview()
        self.playerGSDD.removeFromParent()
    }
    
    var plazDeinGSDD:GSDDAbountUserinfo
    init(plazDeinGSDD: GSDDAbountUserinfo) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    @IBAction func repoertingContentGSDD(_ sender: UIButton) {
        showReportVideoAlertGSDD()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.playerGSDD.playFromBeginning()
    }
    
    
    @IBAction func backLahtery(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.playerGSDD.playerDelegate = self
//        self.playerGSDD.playbackDelegate = self
        
        self.playerGSDD.playerView.playerBackgroundColor = .black
        self.addChild(self.playerGSDD)
        
        self.videokoCoverGSDD.insertSubview(self.playerGSDD.view, at: 0)
        self.playerGSDD.didMove(toParent: self)
        playerGSDD.fillMode = .resizeAspectFill
        let path = Bundle.main.path(forResource: plazDeinGSDD.gsddPodermp4path, ofType: "mp4") ?? ""
        let urlPathname = URL(fileURLWithPath: path)
        
        self.playerGSDD.url = urlPathname
        
        self.playerGSDD.playbackLoops = true
        
        zanGSDD.isSelected = plazDeinGSDD.toVidreStatusGSDD
        colGSDD.isSelected = plazDeinGSDD.ifCollVidre
        
        videokoCoverGSDD.layer.cornerRadius = 22
        videokoCoverGSDD.layer.masksToBounds = true
        
        poinusericonGSDD.layer.cornerRadius = 25
        poinusericonGSDD.layer.masksToBounds = true
        
        
        videokoCoverGSDD.image = UIImage.init(named:plazDeinGSDD.gsddPIav )
        
        vioklNamenGSDD.text =  plazDeinGSDD.gussMusicname
        videghuContenGS.text =  plazDeinGSDD.gsddPodercontentext
        
        poinusericonGSDD.image = UIImage(named:plazDeinGSDD.gsddPIav )
        useringNAmeGS.text = plazDeinGSDD.gsddNjmet
        
    }

    
    
    

    @IBAction func playVbodepNingGSDD(_ sender: UIButton) {
        switch self.playerGSDD.playbackState {
        case .stopped:
            self.playerGSDD.playFromBeginning()
            lplayrtyGSDD.isSelected = true
        case .paused:
            self.playerGSDD.playFromCurrentTime()
            lplayrtyGSDD.isSelected = true
            
        case .playing:
            self.playerGSDD.pause()
            lplayrtyGSDD.isSelected = false
            
        case .failed:
            self.playerGSDD.pause()
            lplayrtyGSDD.isSelected = false
            
        }
        
        
        
    }
    
    
    
    @IBAction func expressChengHHZan(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        plazDeinGSDD.toVidreStatusGSDD = sender.isSelected
        
        for (kiii,itrme) in GSDDDALoaing.chanGSDD.loafingDaGSDD.enumerated() {
            if itrme.gsddUID == plazDeinGSDD.gsddUID {
                GSDDDALoaing.chanGSDD.loafingDaGSDD[kiii] = plazDeinGSDD
            }
        }
        
    }
    
    
    @IBAction func opretionColgHHZan(_ sender: UIButton) {
        plazDeinGSDD.ifCollVidre = sender.isSelected
        for (kiii,itrme) in GSDDDALoaing.chanGSDD.loafingDaGSDD.enumerated() {
            if itrme.gsddUID == plazDeinGSDD.gsddUID {
                GSDDDALoaing.chanGSDD.loafingDaGSDD[kiii] = plazDeinGSDD
            }
        }
    }

}






//extension GSDDPlazdegtaoDComin: PlayerDelegate {
//    
//    func playerReady(_ player: Player) {
//        print("\(#function) ready")
//    }
//    
//    func playerPlaybackStateDidChange(_ player: Player) {
//        print("\(#function) \(player.playbackState.description)")
//    }
//    
//    func playerBufferingStateDidChange(_ player: Player) {
//    }
//    
//    func playerBufferTimeDidChange(_ bufferTime: Double) {
//    }
//    
//    func player(_ player: Player, didFailWithError error: Error?) {
//        print("\(#function) error.description")
//    }
//    
//}
