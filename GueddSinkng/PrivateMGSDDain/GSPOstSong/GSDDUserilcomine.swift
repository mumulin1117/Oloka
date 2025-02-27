//
//  GSDDUserilcomine.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/24.
//

import UIKit


class GSDDUserilcomine: UIViewController {
    private let gsdd_loadActiveViw2 = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        gsdd_loadActiveViw2.center = self.view.center
        
        NotificationCenter.default.addObserver(self, selector: #selector(adfgBackoing), name: NSNotification.Name.init("addBlockGSDDBackoing"), object: nil)
        gsdd_loadActiveViw2.isHidden = true
        view.addSubview(gsdd_loadActiveViw2)
    }
    
    @objc func adfgBackoing()  {
        self.navigationController?.popViewController(animated: true)
    }

    // MARK: - 显示拉黑/举报弹窗
    func showBlockOrReportAlert(targeGSDDIUID: String) {
        let alertGSDD = UIAlertController(
            title: "Operation options",
            message: "Please select the operation for the user",
            preferredStyle: .actionSheet
        )
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
        alertGSDD.addAction(UIAlertAction(
            title: "Block users",
            style: .destructive
        ) { [self] _ in
            confirmGSDDBlock_User(userGSDDIDD: targeGSDDIUID)
        })
        
      
        alertGSDD.addAction(UIAlertAction(
            title: "Report user",
            style: .default
        ) { [self] _ in
            show_GSDDReport_Options()
        })
        
   
        alertGSDD.addAction(UIAlertAction(
            title: quFormate,
            style: .cancel
        ))
        
      
        present(alertGSDD, animated: true)

    }

    // MARK: - 二次确认拉黑弹窗
    private func confirmGSDDBlock_User(userGSDDIDD: String) {
        let alertGSDD = UIAlertController(
            title: "Confirm to block?",
            message: "After being blacklisted, messages from the user will no longer be received, and both parties will not be able to view each other's updates",
            preferredStyle: .alert
        )
        
        alertGSDD.addAction(UIAlertAction(title: "cancel", style: .cancel))
        alertGSDD.addAction(UIAlertAction(
            title: "Confirm to block",
            style: .destructive
        ) { _ in
        
            for (obn,Itemg)  in GSDDDALoaing.chanGSDD.loafingDaGSDD.enumerated() {
                if Itemg.gsddUID == userGSDDIDD {
                    GSDDDALoaing.chanGSDD.loafingDaGSDD.remove(at: obn)
                }
            }
            self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage("Requesting...")
            self.gsdd_loadActiveViw2.begin_GSDDAnimating()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                self.gsdd_loadActiveViw2.end_GSDDAnimating()
                self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: "Block successful ✔")

                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                    
                    
                    NotificationCenter.default.post(name: NSNotification.Name.init("addBlockGSDDBackoing"), object: nil)
                    
                    
                }
                
                
                
            }))
            
        })
        
        present(alertGSDD, animated: true)
    }

    // MARK: - 举报选项弹窗
    private func show_GSDDReport_Options() {
        let alertGSDD = UIAlertController(
            title: "Reason for reporting",
            message: "Please select the reason for reporting this user",
            preferredStyle: .actionSheet
        )
  
        let reasons = [
            "Junk advertising", "pornographic content", "personal attacks",
            "False information", "Other reasons"
        ]
        
        reasons.forEach { reason in
            alertGSDD.addAction(UIAlertAction(
                title: reason,
                style: .default
            ) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage("Requesting...")
                    self.gsdd_loadActiveViw2.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw2.end_GSDDAnimating()
                        let resultsullormate = AppDelegate.descBABAString(upcaseGS: "Thank you for your attentive supervision. We will verify the content and handle it as soon as possible")
                        self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: resultsullormate)
                        
                        
                    }
                }))
            })
        }
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
        alertGSDD.addAction(UIAlertAction(title: quFormate, style: .cancel))
        
        
        present(alertGSDD, animated: true)
    }

    // MARK: - 举报视频内容弹窗
    func showReportVideoAlertGSDD() {
        let alertGSDD = UIAlertController(
            title: "Report video content",
            message: "Please select the reason for reporting",
            preferredStyle: .actionSheet
        )
        
        // 举报选项（视频特有原因）
        let reasonsGSDD = ["Vulgar content", "blurry image quality", "copyright issues","dangerous actions"]
        reasonsGSDD.forEach { reason in
            let action = UIAlertAction(title: reason, style: .default) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage("Requesting...")
                    self.gsdd_loadActiveViw2.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw2.end_GSDDAnimating()
                        let resultsullormate = AppDelegate.descBABAString(upcaseGS: "Thank you for your attentive supervision. We will verify the content and handle it as soon as possible")
                        self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: resultsullormate)
                        
                        
                    }
                }))
            }
            
            alertGSDD.addAction(action)
        }
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
      
        alertGSDD.addAction(UIAlertAction(title: quFormate, style: .cancel))
        self.present(alertGSDD, animated: true)
    }
    
    // MARK: - 举报MP3内容弹窗
    func showReportMP3AlertGSDD() {
        let alertGSDD = UIAlertController(
            title: "Report audio content",
            message: "Please select the reason for reporting",
            preferredStyle: .actionSheet
        )
        
        // 举报选项（视频特有原因）
        let reasonsGSDD = ["Vulgar Content", "Blurred Image Quality", "Copyright Issues", "Dangerous Actions"]
        reasonsGSDD.forEach { reason in
            let action = UIAlertAction(title: reason, style: .default) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage("Requesting...")
                    self.gsdd_loadActiveViw2.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw2.end_GSDDAnimating()
                        let resultsullormate = AppDelegate.descBABAString(upcaseGS: "Thank you for your attentive supervision. We will verify the content and handle it as soon as possible")
                        self.gsdd_loadActiveViw2.showGSDDSuccess(messageGSDD: resultsullormate)
                        
                        
                    }
                }))
            }
            
            alertGSDD.addAction(action)
        }
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
      
        alertGSDD.addAction(UIAlertAction(title: quFormate, style: .cancel))
        self.present(alertGSDD, animated: true)
    }

    
 
    
}


