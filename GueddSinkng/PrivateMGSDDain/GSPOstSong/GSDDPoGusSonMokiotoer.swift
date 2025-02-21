//
//  GSDDPoGusSonMokiotoer.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/21.
//

import UIKit

/// 发布猜歌
class GSDDPoGusSonMokiotoer: UIViewController {
    let popReordViewGS = GSDDBeginRecordView.init(frame: CGRect.init(x: 0, y: UIScreen.main.bounds.height , width: UIScreen.main.bounds.width, height: 420))
    
    @IBOutlet weak var shineStshineview: UIImageView!
    
    @IBOutlet weak var playingmuscioGSDD: UIButton!
    
    
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
           self.popReordViewGS.transform = .identity
       }, completion: nil)
    }
    
    @objc func sureelGSDD()  {//完成录音
        UIView.animate(withDuration: 1, animations: {
            self.popReordViewGS.transform = .identity
        }, completion: nil)
        
        showingRecoredINgGSDDResult()
     }

    @IBAction func startGSDDREcord(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.popReordViewGS.transform = CGAffineTransform(translationX: 0, y: -420)
        }, completion: nil)
        
    }
    
    
    @IBAction func postSureRecoring(_ sender: UIButton) {
    }
    
    
    @IBAction func playingRecoring(_ sender: UIButton) {
    }
    
    @IBAction func onceAgeinGDSSD(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    //显示结果
    func showingRecoredINgGSDDResult()  {
        shineStshineview.isHidden = false
        playingmuscioGSDD.isHidden = false
        resultBackGSDD.isHidden = false
        resultGSTime.isHidden = false
        
        
        recordGSD.isHidden = true
        recordGS.isHidden = true
        
    }
}
