//
//  GSDDBPoberViserComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

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
