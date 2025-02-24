//
//  GSDDRecordingGussing.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/24.
//

import UIKit
import AVFoundation

@objc public protocol GSDRecordingDelegate: AnyObject {
    @objc  func recordingSongGSDDFailed() // 录音失败
    @objc  func recordingSongGSDDEnd() // 录音停止
    @objc  func recordingSongGSDDTooshort() // 录音时间太短（少于10秒）
    @objc  func recordingSongGSDDChange()//录音每隔一秒调用
    
    
    @objc  func playingSongGSDDCompleted()//播放完成
    @objc  func playingSongGSDDError()//播放出错
}

class GSDDRecordingGussing: NSObject {
    static let gussinSS = GSDDRecordingGussing()
    
    private var audioPlayer: AVAudioPlayer?
    
    private var currentRecordingURL: URL?
    //录音器
    private var audioRecorder: AVAudioRecorder?
    private  var recordTimer: Timer?
    
    var recordSeconds: Int = 0
    var delegate: GSDRecordingDelegate?
    
    override init() {
        super.init()
        let audioSession = AVAudioSession.sharedInstance()
        do{
            try audioSession.setCategory(AVAudioSession.Category.playAndRecord, options: .defaultToSpeaker)
        }catch let err{
            print("设置类型失败:\(err.localizedDescription)")
        }
        do{
            try audioSession.setActive(true)
        }catch let err{
            print("初始化动作失败:\(err.localizedDescription)")
        }
    }

    //MARK: -  开始录音，AVAudioSession配置
  
     func startRecord() {
         recordSeconds = 0
    
        let documentPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
                    
        let audioFileName = "temp_recording_\(Date().timeIntervalSince1970).m4a"
        currentRecordingURL = documentPath.appendingPathComponent(audioFileName)
        
        let recordSettings = [
            AVEncoderAudioQualityKey : AVAudioQuality.medium.rawValue,
            AVNumberOfChannelsKey:2, //录音的声道数，立体声为双声道
            AVEncoderBitRateKey : 16,
            AVSampleRateKey : 16000 //录音器每秒采集的录音样本数
        ] as [String : Any]
        
        guard let url = currentRecordingURL else{return}
        do {
            audioRecorder = try AVAudioRecorder.init(url: url, settings: recordSettings)
            audioRecorder?.delegate = self
            audioRecorder?.isMeteringEnabled = true
            audioRecorder?.prepareToRecord()
            audioRecorder?.record()
            
            recordTimer = Timer.scheduledTimer(withTimeInterval:1.0, repeats: true) {[unowned self] (timer) in
                self.recordSeconds += 1
                self.delegate?.recordingSongGSDDChange()
                if self.recordSeconds == 3600 {
                    self.stopSoundRecord()
                }
              
                
            }
            
        }catch let error {
            self.delegate?.recordingSongGSDDFailed()
           print("录音失败: " + error.localizedDescription)
        }
        
        
    }
    
     //MARK: -   录音结束
    public func stopSoundRecord() {
        
        if self.recordSeconds < 5 {
            self.delegate?.recordingSongGSDDTooshort()
            return
        }
        
        if recordTimer != nil {
            recordTimer?.invalidate()
            recordTimer = nil
        }
        if audioRecorder?.isRecording == true  {
            audioRecorder?.stop()
        }
//        let audioSession = AVAudioSession.sharedInstance()
//        try? audioSession.setActive(false, options: AVAudioSession.SetActiveOptions.notifyOthersOnDeactivation)
        self.delegate?.recordingSongGSDDEnd()
        
       
        

    }
    //MARK: -   cancel
    public func cancelSoundGSDDRecord() {
        
        if self.recordSeconds < 10 {
            self.delegate?.recordingSongGSDDTooshort()
            return
        }
        
        if recordTimer != nil {
            recordTimer?.invalidate()
            recordTimer = nil
        }
        if audioRecorder?.isRecording == true {
            audioRecorder?.stop()
        }
        
//        let audioSession = AVAudioSession.sharedInstance()
//        try? audioSession.setActive(false, options: AVAudioSession.SetActiveOptions.notifyOthersOnDeactivation)
        self.delegate?.recordingSongGSDDEnd()
        
        // 删除临时文件
        if let fileURL = currentRecordingURL {
            do {
                try FileManager.default.removeItem(at: fileURL)
                print("录音文件已删除")
            } catch {
                print("文件删除失败: \(error)")
            }
        }
                
        audioRecorder = nil
               
        currentRecordingURL = nil // 重置状态
       
        

    }
    
    func playingREcordingAudio() {
        
        if let fileURL = currentRecordingURL {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
                audioPlayer?.delegate = self
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch {
                print("Error loading audio file: \(error.localizedDescription)")
            }
        }
        
    }

    
    func stopPlaingGSDD() {
        if audioPlayer?.isPlaying == true{
            audioPlayer?.stop()
        }
    }
  
}
extension GSDDRecordingGussing: AVAudioRecorderDelegate{
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        self.delegate?.recordingSongGSDDEnd()
    }
    
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        if recordTimer != nil {
            recordTimer?.invalidate()
        }
        self.recordSeconds = 0
        self.delegate?.recordingSongGSDDFailed()
    }
    
    
}


extension GSDDRecordingGussing:AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
           if flag {
               self.delegate?.playingSongGSDDCompleted()
               print("Audio played successfully.")
           } else {
               self.delegate?.playingSongGSDDError()
               print("Audio did not finish successfully.")
           }
           // 这里可以添加播放完成后的逻辑，比如播放下一首音频等
       }
}
