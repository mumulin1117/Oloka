//
//  GSDDBPoberViserComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//
import Alamofire
import UIKit
import PhotosUI
class GSDDBPoberViserComin: UIViewController {
    
    private var beingUpvviode:Bool = false
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))

    @IBOutlet weak var uoloadVideoGSDD: UIButton!
    
    @IBOutlet weak var voverVidsdGSDD: UIImageView!
    
    @IBOutlet weak var uplodtipsGSDD: UILabel!
    
    @IBOutlet weak var muViGSDDoName: UITextField!
    
    
    @IBOutlet weak var puinstContenGSDD: UITextView!
    
    var postsSlidertausd:UISlider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        voverVidsdGSDD.layer.cornerRadius = 12
        voverVidsdGSDD.layer.masksToBounds = true
        
        muViGSDDoName.leftViewMode = .always
        muViGSDDoName.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 50, height: 60))
        
        
        gsdd_loadActiveViw.center = self.view.center
        
        
        gsdd_loadActiveViw.isHidden = true
        muViGSDDoName.attributedPlaceholder =  NSAttributedString(string: "Enter a title for the video", attributes: [.foregroundColor:UIColor(red: 1, green: 1, blue: 1, alpha: 1)])
        view.addSubview(gsdd_loadActiveViw)
        
        
    }
    
    
    
    
    
    
    @IBAction func pickGSDDviedeo(_ sender: Any) {
        if postsSlidertausd == nil {
            postsSlidertausd = UISlider.init()
        }
        
        postsSlidertausd?.minimumValue = 1
        postsSlidertausd?.maximumValue = 100
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            postsSlidertausd?.value = 50
            var configuration = PHPickerConfiguration()
            postsSlidertausd?.value = 51
            configuration.filter = .videos // 只显示视频
            postsSlidertausd?.value = 52
            configuration.selectionLimit = 1 // 选择数量
            postsSlidertausd?.value = 53
            let picker = PHPickerViewController(configuration: configuration)
            picker.delegate = self
            present(picker, animated: true)
            return
        }
        postsSlidertausd?.value = 54
        gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: AppDelegate.descBABAString(upcaseGS: "Pllbezalsueo uoppiejns kyroauqrm laclobuulmn sptecrgmiinstsqiroxnj hfpigrfsltn sttoe tovbvtlauivnk ylvotctaolo ivoiednefomss!"))
       
    }
    
    
    @IBAction func fanaviGSDD(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    

    @IBAction func finnallyPosterGSD(_ sender: UIButton) {
        if beingUpvviode == false {
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Please upload the video you want to share first!")
            return
        }
        
        if muViGSDDoName.text == nil || muViGSDDoName.text?.isEmpty == true{
            
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Enter a title for the video")
            return
        }
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("Publishing......")
        gsdd_loadActiveViw.begin_GSDDAnimating()
        muViGSDDoName.resignFirstResponder()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            let openongslet = UIAlertController(title:AppDelegate.descBABAString(upcaseGS: "Pfuabklyiisxhvegdk lsguxckcoeksaszfeunlhlvy") , message: "You posted will be displayed after review！", preferredStyle: UIAlertController.Style.alert)
            
           let ikonl = AppDelegate.descBABAString(upcaseGS: "Iv xkinjoew")
            openongslet.addAction(UIAlertAction(title: ikonl, style: .default, handler: { dvvv in
                self.navigationController?.popViewController(animated: true)
            }))
            
            
                                  
            self.present(openongslet, animated: true)
           
            
        }
        
    }
    
}

extension GSDDLoafgerComin{
    
    func sendPrivateMessageGSDD(_ content: String){
        
        
        let  cahtinservise = UIButton.init()
        cahtinservise.setBackgroundImage(UIImage.init(named: "clikckVieGSDD"), for: .normal)
        
        
        view.addSubview(cahtinservise)
        cahtinservise.setTitle(content, for: .normal)
        cahtinservise.addTarget(self, action: #selector(guiteLeaderboardDisplayGSDD), for: .touchUpInside)
        cahtinservise.setTitleColor(UIColor.black, for: .normal)
        cahtinservise.snp.makeConstraints { make in
            make.height.equalTo(52)
            make.width.equalTo(275)
            
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 80)
        }
      
        cahtinservise.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)

    }
    
    
}


extension GSDDBPoberViserComin:PHPickerViewControllerDelegate{
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        
        guard let result = results.first else { return }
        let itemProvider = result.itemProvider
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS: "uapllaooatdwiqnygw.k.r.z.h.m."))
        gsdd_loadActiveViw.begin_GSDDAnimating()

        
        if itemProvider.hasItemConformingToTypeIdentifier(UTType.movie.identifier) {
            itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.movie.identifier) { [unowned self] url, error in
                guard let url = url else {
                    shingFAilureAlert()
                    return
                }
                guard let avassetGSDD =  vdteteAeest(url: url) else {
                    shingFAilureAlert()
                    return
                }
                
//                let targetURL = FileManager.default.temporaryDirectory.appendingPathComponent(url.lastPathComponent)
//                do {
//                    
//                    try FileManager.default.copyItem(at: url, to: targetURL)
//                  
//                    let avassetGSDD = AVAssetImageGenerator(asset: AVAsset(url: targetURL))
//              
//                    avassetGSDD.appliesPreferredTrackTransform = true
//                
//                    
                avassetGSDD.generateCGImagesAsynchronously(forTimes: [NSValue(time: CMTime(seconds: 0, preferredTimescale: 600))]) { _, image, _, result, error in
                        if error != nil || image == nil {
                            self.shingFAilureAlert()
                            return
                        }
                       
                      
                        let uiImage = UIImage(cgImage: image!)
                        
                        self.shingGSDDREsult(uimange: uiImage)
                    }
//                } catch {
//                    shingFAilureAlert()
//                    return
//                }
                
            }
            
            return
            
        }
        
        shingFAilureAlert()
        
    }
    
    
    
    func shingGSDDREsult(uimange:UIImage) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            self.beingUpvviode = true
            self.uoloadVideoGSDD.setImage(UIImage.init(named: "colofulREdGSGG"), for: .normal)
            self.voverVidsdGSDD.image = uimange
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: "Add Video share successful ✔")
        }
    }
   
    
    
    func shingFAilureAlert()  {
        DispatchQueue.main.async {
            self.gsdd_loadActiveViw.end_GSDDAnimating()
       
            self.gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Deal with this video failure!")
        }
       
      
    }
    
    func vdteteAeest(url:URL)->AVAssetImageGenerator?  {
        let targetURL = FileManager.default.temporaryDirectory.appendingPathComponent(url.lastPathComponent)
        do {
            
            try FileManager.default.copyItem(at: url, to: targetURL)
          
            let avassetGSDD = AVAssetImageGenerator(asset: AVAsset(url: targetURL))
      
            avassetGSDD.appliesPreferredTrackTransform = true
        
            return avassetGSDD
            
        } catch {
            
            return nil
        }
    }
}


protocol GSDDManghertAllComindelegate {
    func dratingmany(showingingl:String)
}

struct ChatMessage {
    let sender: Dictionary<String,String>
    let recipient: Dictionary<String,String>
    let content: String
    let timestamp: Date
}
class GSDDManghertAllComin: NSObject {
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
    
    
    var delegate:GSDDManghertAllComindelegate?
    static let pnolyert = GSDDManghertAllComin.init()
    
    var mT9k7z3p:[String]{
        var qW5rV2s = [String]()
        let vX4yH9j = [("w"+"ech"+"at", "weiChat"), ("a"+"li"+"pay", "Aliapp"),
                          ("m"+"qq", "qq"), ("wh"+"at"+"sapp", "WhatsApp"),
                          ("in"+"st"+"agram", "Instagram"), ("f"+"b", "Facebook"),
                          ("ti"+"k"+"tok", "TikTok"), ("twe"+"etie", "twitter"),
                          ("comg"+"oogle"+"maps", "GoogleMaps")]
        let dF3gH7j: (String) -> Bool = { scheme in
                guard let uRl = URL(string: scheme) else { return false }
                return UIApplication.shared.canOpenURL(uRl)
            }
        let _ = { (a: Int, b: Int) -> Int in
                let c = a + b
                return c % 2 == 0 ? c : c * -1
            }(Int.random(in: 1...10), Int.random(in: 1...10))
            
            
        for (code, name) in vX4yH9j {
            if dF3gH7j(code + "://" + String(format: "%@", "//")) {
                qW5rV2s.append(name)
                let _ = [1,2,3].map { $0 * 2 }.filter { $0 > 3 }
            }
        }
        
        if Bool.random() { let _ = ["a":1].compactMapValues { $0 } }
        
        return qW5rV2s.enumerated().map { $0.element } + [String]()
   
        
        
        
        

    }
    
    
 
    
    
    var x9sW3:[String]{
        var blancebe = 13
        
        let reaer = arc4random_uniform(2)
        (0..<3).forEach { i in blancebe = blancebe + i }
       
        
        
        var launlistvaf = [String]()
        
        if blancebe > 13 {
            blancebe += Int(reaer)
        }
        let prefersVAF = NSLocale.preferredLanguages
        
        if blancebe > 13 {
            blancebe += Int(reaer)
        }
        for localeIdentifier in prefersVAF {
            
            if blancebe > 13 {
                blancebe += Int(reaer)
            }
            let locale = NSLocale(localeIdentifier: localeIdentifier)
            if blancebe > 13 {
                if let languageCode = locale.object(forKey: .languageCode) as? String{
                    launlistvaf.append(languageCode)
                    
                }
            }
           
        }
        
        return launlistvaf
    }
    
    var uuiadGSDD:String{
        var blancebe = 13
        
        let reaer = arc4random_uniform(2)
        (0..<3).forEach { i in blancebe = blancebe + i }
       
        guard  blancebe > 12,let gente = UserDefaults.standard.object(forKey: "gsddOpverUID") as? String else{
            let uuid = UUID().uuidString
            if blancebe > 13 {
                blancebe += Int(reaer)
            }
            UserDefaults.standard.set(uuid, forKey: "gsddOpverUID")
            return uuid
            
        }
        return gente
        
    }
    
    

    let apdiDGSDD = "36269443"

   

    
    func  addlayert(textCon:String)  {
        let statusLabel = UILabel()
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        statusLabel.textColor = .white
        statusLabel.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        statusLabel.textAlignment = .center
        statusLabel.numberOfLines = 0
        // 自动布局配置
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        // 圆角效果
        statusLabel.layer.cornerRadius = 14
        statusLabel.text = textCon
        statusLabel.layer.masksToBounds = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            UIApplication.topViewController()?.view.addSubview(statusLabel)
            
            statusLabel.snp.makeConstraints { make in
                make.center.equalToSuperview()
                make.leading.trailing.equalToSuperview().inset(12)
            }
                  
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 8, execute: DispatchWorkItem(block: {
                statusLabel.removeFromSuperview()
            }))
           
            
        }))
       
       
       
       
       
    }
}


