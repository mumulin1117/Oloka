//
//  Abounreinusuipminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class Abounreinusuipminein: UIViewController {

    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
extension DWeahingAllComin{
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
