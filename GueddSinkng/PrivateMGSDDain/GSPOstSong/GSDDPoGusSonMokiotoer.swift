//
//  GSDDPoGusSonMokiotoer.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit

import AVFoundation
/// 发布猜歌
class GSDDPoGusSonMokiotoer: UIViewController, GSDRecordingDelegate {
    
    private  var IfHaveRecordingFile:Bool = false
    
    func playingSongGSDDCompleted() {
        //提示 播放完成
        playingmuscioGSDD.isSelected = false
    }
    
    func playingSongGSDDError() {
        //提示 播放出错
        playingmuscioGSDD.isSelected = false
    }
    
    func recordingSongGSDDFailed() {
        //提示 录音出错
    }
    
    func recordingSongGSDDEnd() {
        //提示 录音成功结束
        IfHaveRecordingFile = true
    }
    
    func recordingSongGSDDTooshort() {
        //提示 小于5秒不行
    }
    
    func recordingSongGSDDChange() {
        
        let totlaSeconds = GSDDRecordingGussing.gussinSS.recordSeconds
        
        let hours = totlaSeconds / 3600
        let minutes = (totlaSeconds % 3600) / 60
        let remainingSeconds = totlaSeconds % 60
        
       let timeString = String(format: "%02d:%02d:%02d", hours, minutes, remainingSeconds)
     
        popReordViewGS.labelhTimeGSDD.text = timeString
        resultGSTime.text = timeString
    }
    
    let popReordViewGS = GSDDBeginRecordView.init(frame: CGRect.init(x: 0, y: UIScreen.main.bounds.height , width: UIScreen.main.bounds.width, height: 420))
    
    @IBOutlet weak var shineStshineview: UIImageView!
    
    @IBOutlet weak var playingmuscioGSDD: UIButton!
    @IBOutlet weak var recordTipslblGSD: UILabel!
    
    @IBOutlet weak var recordGSD: UIButton!
    @IBOutlet weak var resultBackGSDD: UIImageView!
    
    
    @IBOutlet weak var gsddEnterPostView: UITextField!
    
    
    @IBOutlet weak var resultGSTime: UILabel!
    
    @IBOutlet weak var recordGS: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(popReordViewGS)
        
       
        popReordViewGS.cancelGSDDButton.addTarget(self, action: #selector(cancelGSDD), for: .touchUpInside)
        
        popReordViewGS.sureGSDDButton.addTarget(self, action: #selector(sureelGSDD), for: .touchUpInside)
       
    }


    
   @objc func cancelGSDD()  {//取消录音
       UIView.animate(withDuration: 1, animations: {
           GSDDRecordingGussing.gussinSS.cancelSoundGSDDRecord()
           self.popReordViewGS.transform = .identity
       }, completion: nil)
       showingRecoredINgGSDDResult(ifshowing: false)
    }
    
    @objc func sureelGSDD()  {//完成录音
        UIView.animate(withDuration: 1, animations: {
            //录音成功
            GSDDRecordingGussing.gussinSS.stopSoundRecord()
            self.popReordViewGS.transform = .identity
        }, completion: nil)
        
        showingRecoredINgGSDDResult(ifshowing: true)
     }
    
    
    

    @IBAction func startGSDDREcord(_ sender: UIButton) {
        GSDDPoGusSonMokiotoer.requMicphnePerGSDD {
            UIView.animate(withDuration: 1, animations: {
                GSDDRecordingGussing.gussinSS.delegate = self
                GSDDRecordingGussing.gussinSS.startRecord()
                self.popReordViewGS.transform = CGAffineTransform(translationX: 0, y: -420)
            }, completion: nil)
            
            
        } onDenied: { ifFirst in
            let openongslet = UIAlertController(title: "Microphone permission required", message: "Please enable microphone permission in the settings to use the recording function", preferredStyle: UIAlertController.Style.alert)
            openongslet.addAction(UIAlertAction(title: "Not yet", style: .default))
            
            openongslet.addAction(UIAlertAction(title: "Go set it up", style: .default, handler: { action in
                // 提示跳转设置
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url)
                }
            }))
                                  
            self.present(openongslet, animated: true)
        }

       
    }
    
    
    @IBAction func postSureRecoring(_ sender: UIButton) {
        if let enterContetnt = gsddEnterPostView.text ,enterContetnt.isEmpty != false{
            
            return
        }
        
        if IfHaveRecordingFile == false {
            
            
            return
        }
        
        
        let openongslet = UIAlertController(title: "Published successfully", message: "The challenge track you posted will be displayed after review！", preferredStyle: UIAlertController.Style.alert)
        openongslet.addAction(UIAlertAction(title: "Know", style: .default))
        
        
                              
        self.present(openongslet, animated: true)
        
    }
    
    
    @IBAction func playingRecoring(_ sender: UIButton) {
        
        playingmuscioGSDD.isSelected = !playingmuscioGSDD.isSelected
        if playingmuscioGSDD.isSelected == true {
            GSDDRecordingGussing.gussinSS.playingREcordingAudio()
        }else{
            GSDDRecordingGussing.gussinSS.stopPlaingGSDD()
        }
        
    }
    
    @IBAction func onceAgeinGDSSD(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    //显示结果
    func showingRecoredINgGSDDResult(ifshowing:Bool)  {
        if ifshowing  {
            shineStshineview.isHidden = false
            playingmuscioGSDD.isHidden = false
            resultBackGSDD.isHidden = false
            resultGSTime.isHidden = false
            
            
            recordGSD.isHidden = true
            recordTipslblGSD.isHidden = true
            return
        }

        shineStshineview.isHidden = true
        playingmuscioGSDD.isHidden = true
        resultBackGSDD.isHidden = true
        resultGSTime.isHidden = true
        
        
        recordGSD.isHidden = false
        recordTipslblGSD.isHidden = false
      
        
    }
    

    /// 请求麦克风权限
  
   class  func requMicphnePerGSDD(
        onGranted: @escaping () -> Void,
        onDenied: @escaping (Bool) -> Void // Bool 表示是否是首次拒绝
    ) {
        let audioGSDDSession = AVAudioSession.sharedInstance()
        
        switch audioGSDDSession.recordPermission {
        case .granted:
            onGranted() // 已有权限，直接回调成功
            
        case .denied:
            onDenied(false) // 用户之前已明确拒绝
           
        case .undetermined:
            // 首次请求权限
            audioGSDDSession.requestRecordPermission { granted in
                DispatchQueue.main.async {
                    if granted {
                        onGranted()
                    } else {
                        onDenied(true) // 用户首次拒绝
                    }
                }
            }
            
        @unknown default:
            break
        }
    }
}
