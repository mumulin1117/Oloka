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

        NotificationCenter.default.addObserver(self, selector: #selector(adfgBackoing), name: NSNotification.Name.init("addBlockGSDDBackoing"), object: nil)
        
        gsdd_loadActiveViw2.center = self.view.center
        gsdd_loadActiveViw2.isHidden = true
        view.addSubview(gsdd_loadActiveViw2)
    }
    
    @objc func adfgBackoing()  {
        self.navigationController?.popViewController(animated: true)
    }

    // MARK: - 显示拉黑/举报弹窗
    func showBlockOrReportAlert(targetUserName: String) {
        let alert = UIAlertController(
            title: "Operation options",
            message: "Please select the operation for the user",
            preferredStyle: .actionSheet
        )
        
        // 拉黑按钮（红色警示样式）
        alert.addAction(UIAlertAction(
            title: "Block users",
            style: .destructive
        ) { [self] _ in
            confirmBlockUser(userGSDDIDD: targetUserName)
        })
        
        // 举报按钮
        alert.addAction(UIAlertAction(
            title: "Report user",
            style: .default
        ) { [self] _ in
            showReportOptions()
        })
        
        // 取消按钮
        alert.addAction(UIAlertAction(
            title: "cancel",
            style: .cancel
        ))
        
       
        
        // 显示弹窗
        present(alert, animated: true)
//        UIApplication.shared.keyWindow?.rootViewController?.topperMostGSDController.present(alert, animated: true)
    }

    // MARK: - 二次确认拉黑弹窗
    private func confirmBlockUser(userGSDDIDD: String) {
        let alert = UIAlertController(
            title: "Confirm to block?",
            message: "After being blacklisted, messages from the user will no longer be received, and both parties will not be able to view each other's updates",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel))
        alert.addAction(UIAlertAction(
            title: "Confirm to block",
            style: .destructive
        ) { _ in
            // 执行实际拉黑逻辑
            
            
            for (obn,Itemg)  in GSDDDALoaing.chanGSDD.loafingDaGSDD.enumerated() {
                if Itemg.gsddUID == userGSDDIDD {
                    GSDDDALoaing.chanGSDD.loafingDaGSDD.remove(at: obn)
                }
            }
            self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage("Requesting...")
            self.gsdd_loadActiveViw2.begin_GSDDAnimating()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                self.gsdd_loadActiveViw2.end_GSDDAnimating()
                self.gsdd_loadActiveViw2.showSuccess(message: "Block successful ✔")

                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                    
                    
                    NotificationCenter.default.post(name: NSNotification.Name.init("addBlockGSDDBackoing"), object: nil)
                    
                    
                }
                
                
                
            }))
            
        })
        
        present(alert, animated: true)
    }

    // MARK: - 举报选项弹窗
    private func showReportOptions() {
        let alert = UIAlertController(
            title: "Reason for reporting",
            message: "Please select the reason for reporting this user",
            preferredStyle: .actionSheet
        )
        
        // 预设举报类型
        let reasons = [
            "Junk advertising", "pornographic content", "personal attacks",
            "False information", "Other reasons"
        ]
        
        reasons.forEach { reason in
            alert.addAction(UIAlertAction(
                title: reason,
                style: .default
            ) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw2.setActiveindicatore_GSDDMessage("Requesting...")
                    self.gsdd_loadActiveViw2.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw2.end_GSDDAnimating()
                        
                        self.gsdd_loadActiveViw2.showSuccess(message: "Thank you for your supervision. We will review the disease treatment as soon as possible! ✔")
                        
                        
                    }
                }))
            })
        }
        
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel))
        
        
        present(alert, animated: true)
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
                        
                        self.gsdd_loadActiveViw2.showSuccess(message: "Thank you for your supervision. We will review the disease treatment as soon as possible! ✔")
                        
                        
                    }
                }))
            }
            
            alertGSDD.addAction(action)
        }
        
      
        alertGSDD.addAction(UIAlertAction(title: "cancel", style: .cancel))
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
                        
                        self.gsdd_loadActiveViw2.showSuccess(message: "Thank you for your supervision. We will review the disease treatment as soon as possible! ✔")
                        
                        
                    }
                }))
            }
            
            alertGSDD.addAction(action)
        }
        
      
        alertGSDD.addAction(UIAlertAction(title: "cancel", style: .cancel))
        self.present(alertGSDD, animated: true)
    }

    
 
    
}


