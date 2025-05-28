//
//  GSDDAbounreinusuipminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class GSDDAbounreinusuipminein: UIViewController {

    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
extension GSDDWeahingAllComin{
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            return
        }
        feedGSDD?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
    
    
}
