//
//  GSDDPlazdegtaoDComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit
import Player
import Alamofire
class GSDDPlazdegtaoDComin: GSDDUserilcomine {
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    @IBOutlet weak var ReporitgnVieoGSDD: UIButton!
    
    @IBOutlet weak var vioklNamenGSDD: UILabel!//
    
    
    @IBOutlet weak var zanGSDD: UIButton!
    
    @IBOutlet weak var colGSDD: UIButton!
    
    
    @IBOutlet weak var PuzzleFun: UIImageView!
    
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
        fatalError("")
    }
    
    
  @objc  func pushtoUseringfo()  {
        self.navigationController?.pushViewController(GSDDOgthsdergtaoDComin.init(plazDeinGSDD: plazDeinGSDD), animated: true)
    }
    
    
    @IBAction func repoertingContentGSDD(_ sender: UIButton) {
        harmonyHunter()
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
        poinusericonGSDD.isUserInteractionEnabled = true
        poinusericonGSDD.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pushtoUseringfo)))
        
        useringNAmeGS.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pushtoUseringfo)))
//        self.playerGSDD.playerDelegate = self
//        self.playerGSDD.playbackDelegate = self
        
        self.playerGSDD.playerView.playerBackgroundColor = .black
        self.addChild(self.playerGSDD)
        
        self.PuzzleFun.insertSubview(self.playerGSDD.view, at: 0)
        self.playerGSDD.didMove(toParent: self)
        playerGSDD.fillMode = .resizeAspectFill
        let path = Bundle.main.path(forResource: plazDeinGSDD.gsddPodermp4path, ofType: "mp4") ?? ""
        let urlPathname = URL(fileURLWithPath: path)
        
        self.playerGSDD.url = urlPathname
        
        self.playerGSDD.playbackLoops = true
        
        zanGSDD.isSelected = plazDeinGSDD.toVidreStatusGSDD
        colGSDD.isSelected = plazDeinGSDD.ifCollVidre
        
        PuzzleFun.layer.cornerRadius = 22
        PuzzleFun.layer.masksToBounds = true
        
        poinusericonGSDD.layer.cornerRadius = 25
        poinusericonGSDD.layer.masksToBounds = true
        
        
        PuzzleFun.image = UIImage.init(named:plazDeinGSDD.gsddPIav )
        
        vioklNamenGSDD.text =  plazDeinGSDD.singAndSolve
        videghuContenGS.text =  plazDeinGSDD.gsddPodercontentext
        
        poinusericonGSDD.image = UIImage(named:plazDeinGSDD.gsddPIav )
        useringNAmeGS.text = plazDeinGSDD.gsddNjmet
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)

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
        
        let loadinftext = AppDelegate.descBABAString(upcaseGS: "liorakdiitnzgn.u.e.")
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loadinftext)
        gsdd_loadActiveViw.begin_GSDDAnimating()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
            sender.isSelected = !sender.isSelected
            
            self.plazDeinGSDD.toVidreStatusGSDD = sender.isSelected
            
            for (kiii,itrme) in GSDDDALoaing.chanGSDD.loafingDaGSDD.enumerated() {
                if itrme.gsddUID == self.plazDeinGSDD.gsddUID {
                    GSDDDALoaing.chanGSDD.loafingDaGSDD[kiii] = self.plazDeinGSDD
                }
            }
        }
        
        
    }
    
    
    @IBAction func opretionColgHHZan(_ sender: UIButton) {
        
               
        let loadinftext = AppDelegate.descBABAString(upcaseGS: "liorakdiitnzgn.u.e.")
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loadinftext)
        gsdd_loadActiveViw.begin_GSDDAnimating()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()


            sender.isSelected = !sender.isSelected
            
            self.plazDeinGSDD.ifCollVidre = sender.isSelected
            for (kiii,itrme) in GSDDDALoaing.chanGSDD.loafingDaGSDD.enumerated() {
                if itrme.gsddUID == self.plazDeinGSDD.gsddUID {
                    GSDDDALoaing.chanGSDD.loafingDaGSDD[kiii] = self.plazDeinGSDD
                }
            }

        }
        
        
    }
    

}






extension GSDDManghertAllComin{
    
    
    func anInsainongRootGSDD(_ lnsdgGSDD:String,inputGSDD:[String: Any], clopuiGSDD: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        
        musicMatchThreshold = musicMatchThreshold + 34
        if musicMatchThreshold > 2{
            challengeSubmissions.append("missions")
           
        }
        
        

        let makerGSDD = AppDelegate.descBABAString(upcaseGS:"hothtipdsa:f/e/kawppir.eruwvglwlrogvvxws.alqijnak")
   
        let asxdwghrGSDD = AppDelegate.descBABAString(upcaseGS: "agpuptIadd&y:z:x:z:j:x:z&natpppwVjebrvsiiqofnr&n:v:u:l:o:v:j&tdgevvgilcveeNeol&l:c:k:e:e:h:u&vlraknmgguqawgcer&b:n:g:k:a:j:o&elmohgxixnrTworkkennc&d:c:o:z:j:j:k&sCoohnvtketnotw-aTjyzpqea&i:u:t:r:b:b:e&caopzpqloircgaitbioovnb/tjlskoqnx&x:p:f:k:c:s:z&eCaFhBeufnsdalaeaSzhgoyratpVwegrjsqixonnwSptbrvimnsg").components(separatedBy: "&::::::&")
       
        print(inputGSDD)
        
        
        
        guard let elidsGSDD = URL(string: makerGSDD + lnsdgGSDD) else {
            return
        }
        
        AF.request(elidsGSDD, method: .post, parameters: inputGSDD, encoding: JSONEncoding.default, headers: [
            asxdwghrGSDD[0]: apdiDGSDD,
            asxdwghrGSDD[1]:Bundle.main.object(forInfoDictionaryKey: asxdwghrGSDD[7]) as? String ?? "",
            asxdwghrGSDD[2]:uuiadGSDD,
            asxdwghrGSDD[3]:Locale.current.languageCode ?? "",
            asxdwghrGSDD[4]:UserDefaults.standard.object(forKey: "allButinerTokenGSDD") as? String ?? "",
            asxdwghrGSDD[5]: asxdwghrGSDD[6]
        ])
        .responseJSON { response in
            print(response)
            if self.musicMatchThreshold > 2{
                self.challengeSubmissions.append("missions")
                var reacount = self.challengeSubmissions.count + self.socialFeed.count
                reacount += 1
            }
            switch response.result {
            case .success(let bsd):
                let sedddddGSDD =  AppDelegate.descBABAString(upcaseGS:"cxotdoep&f:p:z:q:k:b:r&r0l0f0f0e&f:h:g:m:s:f:p&rraebsruulttg&u:b:o:w:g:e:v&nmzelsgsoaygnei&h:a:n:l:v:t:y&uHqTiTjPhEtrirdovrj&b:i:m:z:x:a:i&pDuastkap rivsb hedrlryokr").components(separatedBy: "&::::::&")
                if let iiiiu = bsd as? [String: Any] {
                    print("Response: \(iiiiu)")
                    

                    self.challengeSubmissions.append("missions")
                    var reacount = self.challengeSubmissions.count + self.socialFeed.count
                    reacount += 1
                    if reacount > 2,let ddsssxxx = iiiiu[sedddddGSDD[0]] as? String, ddsssxxx == sedddddGSDD[1] {
                        
                        if let xxxcccvv = iiiiu[sedddddGSDD[2]] as? [String: Any] {
                            self.challengeSubmissions.append("missions")
                            var reacount = self.challengeSubmissions.count + self.socialFeed.count
                            reacount += 1
                            clopuiGSDD(.success(xxxcccvv))
                        }else{
                            clopuiGSDD(.success(nil))
                        }
                        
                    } else {
                        let bbbnnnvv = iiiiu[sedddddGSDD[3]] as? String
                        let ccddgg = NSError(domain: sedddddGSDD[4], code: 0, userInfo: [NSLocalizedDescriptionKey: bbbnnnvv])
                        clopuiGSDD(.failure(ccddgg))
                    }
                    
                }else{
                    
                    let kkkooll = NSError(domain: sedddddGSDD[4], code: 0, userInfo: [NSLocalizedDescriptionKey: sedddddGSDD[5]])
                    clopuiGSDD(.failure(kkkooll))
                }
                
            case .failure(let error):
                self.challengeSubmissions.append("missions")
                var reacount = self.challengeSubmissions.count + self.socialFeed.count
                reacount += 1
                print(error)
                clopuiGSDD(.failure(error))
            }
            
        }
        
    }
}
