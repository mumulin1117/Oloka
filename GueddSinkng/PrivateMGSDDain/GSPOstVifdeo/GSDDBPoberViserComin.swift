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
       
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
           
            var configuration = PHPickerConfiguration()
          
            configuration.filter = .videos // 只显示视频
            configuration.selectionLimit = 1 // 选择数量
            
            let picker = PHPickerViewController(configuration: configuration)
            picker.delegate = self
            present(picker, animated: true)
            return
        }
        
        gsdd_loadActiveViw.showFailure(message: "Please open your album permission first to obtain local videos!")
       
    }
    
    
    @IBAction func fanaviGSDD(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    

    @IBAction func finnallyPosterGSD(_ sender: UIButton) {
        if beingUpvviode == false {
            gsdd_loadActiveViw.showFailure(message: "Please upload the video you want to share first!")
            return
        }
        
        if muViGSDDoName.text == nil || muViGSDDoName.text?.isEmpty == true{
            
            gsdd_loadActiveViw.showFailure(message: "Enter a title for the video")
            return
        }
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("Publishing......")
        gsdd_loadActiveViw.begin_GSDDAnimating()
        muViGSDDoName.resignFirstResponder()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            let openongslet = UIAlertController(title: "Published successfully", message: "The challenge track you posted will be displayed after review！", preferredStyle: UIAlertController.Style.alert)
            openongslet.addAction(UIAlertAction(title: "I know", style: .default, handler: { dvvv in
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
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("uploading......")
        gsdd_loadActiveViw.begin_GSDDAnimating()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
          
       

        
        
        if itemProvider.hasItemConformingToTypeIdentifier(UTType.movie.identifier) {
            itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.movie.identifier) { [weak self] url, error in
                guard let self = self, let url = url else {
                    DispatchQueue.main.async {
                        
                        self?.gsdd_loadActiveViw.showFailure(message: "Video format error!")
                    }
                    return
                }
                
                // 创建临时副本（系统可能会清除原始文件）
                let tempDirectory = FileManager.default.temporaryDirectory
                
                
                
                let targetURL = tempDirectory.appendingPathComponent(url.lastPathComponent)
                do {
                    
                    try FileManager.default.copyItem(at: url, to: targetURL)
                    
                    let asset = AVAsset(url: targetURL)
                    let avassetGSDD = AVAssetImageGenerator(asset: asset)
              
                    avassetGSDD.appliesPreferredTrackTransform = true
                
                    let timeCMGSDD = CMTime(seconds: 0, preferredTimescale: 600) //
                    avassetGSDD.generateCGImagesAsynchronously(forTimes: [NSValue(time: timeCMGSDD)]) { _, image, _, result, error in
                        if let error = error {
                            
                            
                            self.gsdd_loadActiveViw.showFailure(message: "Video format error!")
                            return
                        }
                       
                        guard let cgImage = image else { return }
                        let uiImage = UIImage(cgImage: cgImage)
                        
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
                            self.beingUpvviode = true
                            self.uoloadVideoGSDD.setImage(UIImage.init(named: "colofulREdGSGG"), for: .normal)
                            self.voverVidsdGSDD.image = uiImage
                          
                            self.gsdd_loadActiveViw.showSuccess(message: "Add successful ✔")
                        }
                    }
//
                } catch {
                    DispatchQueue.main.async {
                        
                        
                        self.gsdd_loadActiveViw.showFailure(message: "Failed to copy video file!")
                    }
                    return
                }
                
            }
            
            return
            
        }
        
        
            self.gsdd_loadActiveViw.showFailure(message: "Deal with video failure!")
       
        }
        
    }
    
   
}
