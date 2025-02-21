//
//  GSDDBPoberViserComin.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/21.
//

import UIKit
import PhotosUI
class GSDDBPoberViserComin: UIViewController {
    
    private var beingUpvviode:Bool = false
    

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
        "Sorry->->,No ->->album ->->permission!"
        
    }
    
    
    @IBAction func fanaviGSDD(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    

    @IBAction func finnallyPosterGSD(_ sender: UIButton) {
        
        
        
    }
    
}



extension GSDDBPoberViserComin:PHPickerViewControllerDelegate{
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        
        guard let result = results.first else { return }
        let itemProvider = result.itemProvider
        
        "uploading......"
        
        if itemProvider.hasItemConformingToTypeIdentifier(UTType.movie.identifier) {
            itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.movie.identifier) { [weak self] url, error in
                guard let self = self, let url = url else {
                    DispatchQueue.main.async {
                        "Video format error!"
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
                            "Add video successed!"
                            return
                        }
                       
                        guard let cgImage = image else { return }
                        let uiImage = UIImage(cgImage: cgImage)
                        
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
                            self.beingUpvviode = true
                            self.uoloadVideoGSDD.setImage(UIImage.init(named: "colofulREdGSGG"), for: .normal)
                            self.voverVidsdGSDD.image = uiImage
                          
                            "Add video successed!"
                           
                        }
                    }
//
                } catch {
                    DispatchQueue.main.async {
                        
                        "Failed to copy video file!"
                        
                    }
                    return
                }
                
            }
            
            return
            
        }
        
        "Deal with video failure!"
        
        
        
    }
    
   
}
