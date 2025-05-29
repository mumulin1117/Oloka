//
//  SongHuntertoer.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit

import AVFoundation
import WebKit

@objc public protocol GSDRecordingDelegate: AnyObject {
    @objc  func recordingSongGSDDFailed() // 录音失败
    @objc  func recordingSongGSDDEnd() // 录音停止

    @objc  func recordingSongGSDDChange()//录音每隔一秒调用
    
    
    @objc  func playingSongGSDDCompleted()//播放完成
    @objc  func playingSongGSDDError()//播放出错
}
/// 发布猜歌
class SongHuntertoer: UIViewController, GSDRecordingDelegate {
    private let gsdd_loadActiveViw = DrhythmPursloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    private  var IfHaveRecordingFile:Bool = false
    
    func playingSongGSDDCompleted() {
        //提示 播放完成
        playingmuscioGSDD.isSelected = false
        
        gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: " Play completed ✔")
    }
    
    func playingSongGSDDError() {
        //提示 播放出错
        playingmuscioGSDD.isSelected = false
        
        gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Play error")
    }
    
    func recordingSongGSDDFailed() {
        //提示 录音出错
        gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Recording error")
    }
    
    func recordingSongGSDDEnd() {
        //提示 录音成功结束
        IfHaveRecordingFile = true
        gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: " Recording successfully ended ✔")
    }
    
//    func recordingSongGSDDTooshort() {
//        //提示 小于5秒不行
//    }
    
    func recordingSongGSDDChange() {
        
        let totlaSeconds = SingOlRecordingGussing.gussinSS.recordTimeSecGS
        
        let hours = totlaSeconds / 3600
        let minutes = (totlaSeconds % 3600) / 60
        let remainingSeconds = totlaSeconds % 60
        
       let timeString = String(format: "%02d:%02d:%02d", hours, minutes, remainingSeconds)
     
        popReordViewGS.labelhTimeGSDD.text = timeString
        resultGSTime.text = timeString
    }
    
    let popReordViewGS = TalentSingShowcase.init(frame: CGRect.init(x: 0, y: UIScreen.main.bounds.height , width: UIScreen.main.bounds.width, height: 420))
    
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
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }


    
   @objc func cancelGSDD()  {//取消录音
       UIView.animate(withDuration: 1, animations: {
           SingOlRecordingGussing.gussinSS.cancelSoundGSDDRecord()
           self.popReordViewGS.transform = .identity
       }, completion: nil)
       showingRecoredINgGSDDResult(ifshowing: false)
    }
    
    @objc func sureelGSDD()  {//完成录音
        UIView.animate(withDuration: 1, animations: {
            //录音成功
            SingOlRecordingGussing.gussinSS.stopSoundRecord()
            self.popReordViewGS.transform = .identity
        }, completion: nil)
        
        showingRecoredINgGSDDResult(ifshowing: true)
     }
    
    
    

    @IBAction func startGSDDREcord(_ sender: UIButton) {
        SongHuntertoer.requMicphnePerGSDD {
            UIView.animate(withDuration: 1, animations: {
                SingOlRecordingGussing.gussinSS.recorAndPlaydelegate = self
                SingOlRecordingGussing.gussinSS.begin_GSDD_songRecord()
                self.popReordViewGS.transform = CGAffineTransform(translationX: 0, y: -420)
            }, completion: nil)
            
            
        } onDenied: { ifFirst in
            let openongslet = UIAlertController(title: AppDelegate.descBABAString(upcaseGS:"Mzipczrzozpfhtounmex cpaerrwmuiusisyiuovnl hrsejqzutilrweod"), message: AppDelegate.descBABAString(upcaseGS:"Pnlaeqajsxeg jewnhaybelzed jmdiycdraohpahxoynxev bpgecrdmmifslsjiwounl eiznk dtihqet xskedthtaianmgwsj ztqov zuqsxeu ttzhsec srvencyowrxdwihnkgk qfgupnqcatnifomn"), preferredStyle: UIAlertController.Style.alert)
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
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Please enter the song name！")
            return
        }
        
        if IfHaveRecordingFile == false {
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Please sing your song first！")
            
            return
        }
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS: "uwpvlxozarda.y.f."))
        gsdd_loadActiveViw.begin_GSDDAnimating()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
           
            let openongslet = UIAlertController(title:  AppDelegate.descBABAString(upcaseGS: "Pquebtloiusshmeydg jsiuxcbczegsushfauplxlcy"), message: "The challenge track you posted will be displayed after review！", preferredStyle: UIAlertController.Style.alert)
            openongslet.addAction(UIAlertAction(title: AppDelegate.descBABAString(upcaseGS: "Ie jkincopw"), style: .default, handler: { dvvv in
                self.navigationController?.popViewController(animated: true)
            }))
            
            
                                  
            self.present(openongslet, animated: true)
            
        }
        
        
        
    }
    
    
    @IBAction func playingRecoring(_ sender: UIButton) {
        
        playingmuscioGSDD.isSelected = !playingmuscioGSDD.isSelected
        if playingmuscioGSDD.isSelected == true {
            SingOlRecordingGussing.gussinSS.playingREcordingAudio(getfileURL: SingOlRecordingGussing.gussinSS.nowRecordPathGSDDURL)
        }else{
            SingOlRecordingGussing.gussinSS.stopPlaingGSDD()
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

extension DWeahingAllComin{
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
                reacount += 1
                if reacount < 1 {
                    return nil
                }
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                        reacount += 1
                    }
                }
            }
            
       
          return nil
    }
}
