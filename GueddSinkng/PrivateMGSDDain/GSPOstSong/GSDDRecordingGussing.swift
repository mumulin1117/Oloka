//
//  GSDDRecordingGussing.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/24.
//

import UIKit
import AVFoundation



class GSDDRecordingGussing: NSObject {
    static let gussinSS = GSDDRecordingGussing()
    
    private var audioGSDDPlayer: AVAudioPlayer?
    
     var nowRecordPathGSDDURL: URL?
    //录音器
    private var audioRecordGSDD: AVAudioRecorder?
    
    var SingGSDD:String?
    
    var AllPathFGSDD:[String] = Array<String>()
    
    
    private  var recordGSDDTimer: Timer?
    
    var recordTimeSecGS: Int = 0
    
    var recorAndPlaydelegate: GSDRecordingDelegate?
    
    override init() {
        super.init()
        SingGSDD = "GSDDRecordingGussing"
        createrAudioINto()
    }

    
   
    
     func begin_GSDD_songRecord() {
         recordTimeSecGS = 0
    
         gsddStaucRecorPath()
        
       
        guard let url = nowRecordPathGSDDURL else{return}
       
         let configrecordGSDD = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                        AVSampleRateKey: 44100,
                        AVNumberOfChannelsKey: 1,
                        AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
         ] as [String : Any]
         if let pajt = SingGSDD{
             AllPathFGSDD.append(pajt)
         }
         
         audioRecordGSDD = try? AVAudioRecorder.init(url: url, settings: configrecordGSDD)
         audioRecordGSDD?.delegate = self
         if let pajt = SingGSDD{
             AllPathFGSDD.append(pajt)
         }
         audioRecordGSDD?.isMeteringEnabled = true
         audioRecordGSDD?.prepareToRecord()
         if let pajt = SingGSDD{
             AllPathFGSDD.append(pajt)
         }
         audioRecordGSDD?.record()
         stardREcodingTimerGSDD()
  
    }
    
    
   
    
    
    func gsddStaucRecorPath()  {
        let documentPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        if let pajt = SingGSDD{
            self.AllPathFGSDD.append(pajt)
        }
        let audioFileName = "temp_recording_\(Date().timeIntervalSince1970).m4a"
        nowRecordPathGSDDURL = documentPath.appendingPathComponent(audioFileName)
    }
    //MARK: -   cancel
    public func cancelSoundGSDDRecord() {
        
        stopSoundRecord()
        self.AllPathFGSDD.removeAll()
        // 删除临时文件
        if let fileURL = nowRecordPathGSDDURL {
            try? FileManager.default.removeItem(at: fileURL)
        }
                
        audioRecordGSDD = nil
               
        nowRecordPathGSDDURL = nil // 重置状态
       
    }
     //MARK: -   录音结束
    public func stopSoundRecord() {
        if let pajt = SingGSDD{
            self.AllPathFGSDD.append(pajt)
        }
        SingGSDD?.removeAll()
        if recordGSDDTimer != nil {
            recordGSDDTimer?.invalidate()
            recordGSDDTimer = nil
        }
        self.AllPathFGSDD.removeAll()
        if audioRecordGSDD?.isRecording == true  {
            audioRecordGSDD?.stop()
        }

        self.recorAndPlaydelegate?.recordingSongGSDDEnd()
        
       
        

    }
    
    
   
    
    func stopPlaingGSDD() {
        if let pajt = SingGSDD{
            self.AllPathFGSDD.append(pajt)
        }
        SingGSDD?.removeAll()
        if audioGSDDPlayer?.isPlaying == true{
            audioGSDDPlayer?.stop()
        }
    }
  
}
extension GSDDRecordingGussing: AVAudioRecorderDelegate{
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        self.recorAndPlaydelegate?.recordingSongGSDDEnd()
    }
    func createrAudioINto()  {
        let audioSession = AVAudioSession.sharedInstance()
        SingGSDD?.append("456")
        try? audioSession.setCategory(AVAudioSession.Category.playAndRecord, options: .defaultToSpeaker)
        try? audioSession.setActive(true)
    }
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        if recordGSDDTimer != nil {
            recordGSDDTimer?.invalidate()
        }
        self.recordTimeSecGS = 0
        self.recorAndPlaydelegate?.recordingSongGSDDFailed()
    }
    
    
}


extension GSDDRecordingGussing:AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
           if flag {
               self.recorAndPlaydelegate?.playingSongGSDDCompleted()
               
           } else {
               self.recorAndPlaydelegate?.playingSongGSDDError()
               
           }
           
       }
}

extension GSDDRecordingGussing{
    func stardREcodingTimerGSDD() {
        if let pajt = SingGSDD{
            AllPathFGSDD.append(pajt)
        }
        recordGSDDTimer = Timer.scheduledTimer(withTimeInterval:1.0, repeats: true) {[unowned self] (timer) in
            self.recordTimeSecGS += 1
            if let pajt = SingGSDD{
                self.AllPathFGSDD.append(pajt)
            }
            self.recorAndPlaydelegate?.recordingSongGSDDChange()
            if self.recordTimeSecGS == 3600 {
                self.stopSoundRecord()
            }
          
            
        }
    }
}

extension GSDDRecordingGussing{
    func playingREcordingAudio(getfileURL:URL?) {
        if let pajt = SingGSDD{
            self.AllPathFGSDD.append(pajt)
        }
        SingGSDD?.removeAll()
        if let fileURL = getfileURL {
            audioGSDDPlayer = try? AVAudioPlayer(contentsOf: fileURL)
            audioGSDDPlayer?.delegate = self
            audioGSDDPlayer?.prepareToPlay()
            audioGSDDPlayer?.play()
        }
        
    }

}
