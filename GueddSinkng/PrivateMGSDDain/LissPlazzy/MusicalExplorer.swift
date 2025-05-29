//
//  MusicalExplorer.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/24.
//

import UIKit
import WebKit

class MusicalExplorer: UICollectionViewCell {

    @IBOutlet weak var GEtinoginh: UIButton!
    
    
    @IBOutlet weak var speengdgGSDD: UILabel!
    
    
    @IBOutlet weak var atolldiomendGSDD: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        GEtinoginh.layer.cornerRadius = 17
        GEtinoginh.layer.masksToBounds = true
    }

}
extension DWeahingAllComin{
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            decisionHandler(.allow)
            return
        }
        decisionHandler(.allow)
        
    }
    
}





