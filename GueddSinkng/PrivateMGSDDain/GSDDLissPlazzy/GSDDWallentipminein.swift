//
//  GSDDWallentipminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit
import SwiftyStoreKit
struct PayingGSDDIte{
    var idGSTDD:String
    var CountGSDD:Int
    var payGSDDSpeend:String
    init(idGSTDD: String, CountGSDD: Int, payGSDDSpeend: String) {
        self.idGSTDD = idGSTDD
        self.CountGSDD = CountGSDD
        self.payGSDDSpeend = payGSDDSpeend
    }
}
class GSDDWallentipminein: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        allPayGSDDINf.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let gsddceg = collectionView.dequeueReusableCell(withReuseIdentifier: "GSDDUserPauioellID", for: indexPath) as! GSDDUserPauioell
        gsddceg.speengdgGSDD.text = allPayGSDDINf[indexPath.row].payGSDDSpeend
        gsddceg.atolldiomendGSDD.text = "\(allPayGSDDINf[indexPath.row].CountGSDD)"
        return gsddceg
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.view.isUserInteractionEnabled = false
        let current = allPayGSDDINf[indexPath.row]
        

        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage("Paying...")
        gsdd_loadActiveViw.begin_GSDDAnimating()
        SwiftyStoreKit.purchaseProduct(current.idGSTDD, atomically: true) { psResult in
            self.view.isUserInteractionEnabled = true
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            if case .success(let psPurch) = psResult {
                let psdownloads = psPurch.transaction.downloads
                
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
              
                
                var CounytDiomend = Int(GSDDDALoaing.chanGSDD.signinyhuGSDD?.gussUSerPayCount ?? "0") ?? 0
                CounytDiomend += current.CountGSDD
                
                self.dimonedGSDD.text = "\(CounytDiomend)"
            
                GSDDEmaillogadComin.updateCurrentGSDDUsering(GSIDDD: GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddUID ?? "", nameGSDD: nil, briefGSDD: nil, xcoinID: "\(CounytDiomend)")

                self.gsdd_loadActiveViw.showSuccess(message: "Pay successful ✔")
            }else if case .error(let error) = psResult {
                self.view.isUserInteractionEnabled = true
                
                if error.code != .paymentCancelled {
                    self.gsdd_loadActiveViw.showFailure(message: error.localizedDescription)

                }
                
               
            }
        }
        
    }

    @IBOutlet weak var dimonedGSDD: UILabel!
    
    
    
    @IBOutlet weak var allBuifView: UICollectionView!
   

    var allPayGSDDINf = [
        PayingGSDDIte.init(idGSTDD: "ijnosehunymqmpnw", CountGSDD: 400, payGSDDSpeend: "$0.99"),
                        
        PayingGSDDIte.init(idGSTDD: "bmsatnnkjcerdffr", CountGSDD: 800, payGSDDSpeend: "$1.99"),
        PayingGSDDIte.init(idGSTDD: "olakasongerrjiu", CountGSDD: 2950, payGSDDSpeend: "$2.99"),
       
        PayingGSDDIte.init(idGSTDD: "qwmlnbjhibhambvl", CountGSDD: 2450, payGSDDSpeend: "$4.99"),
        PayingGSDDIte.init(idGSTDD: "olakasongluijiu", CountGSDD: 2950, payGSDDSpeend: "$6.99"),
        PayingGSDDIte.init(idGSTDD: "olakasongbajiu", CountGSDD: 4750, payGSDDSpeend: "$8.99"),
        PayingGSDDIte.init(idGSTDD: "kndpnwswzeknrhap", CountGSDD: 4900, payGSDDSpeend: "$9.99"),
        PayingGSDDIte.init(idGSTDD: "eejigtwvqgxvokin", CountGSDD: 9800, payGSDDSpeend: "$19.99"),
        PayingGSDDIte.init(idGSTDD: "zxmaqhjjixfkhanq", CountGSDD: 24500, payGSDDSpeend: "$49.99"),
     
        PayingGSDDIte.init(idGSTDD: "euvijcgngourojpq", CountGSDD: 49000, payGSDDSpeend: "$99.99")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allBuifView.backgroundColor = UIColor(red: 0.3, green: 0.12, blue: 0.64, alpha: 1)
        allBuifView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        allBuifView.register(UINib.init(nibName: "GSDDUserPauioell", bundle: nil), forCellWithReuseIdentifier: "GSDDUserPauioellID")
        
        allBuifView.contentInset = UIEdgeInsets(top: 30, left: 12, bottom: 100, right: 12)
        
        dimonedGSDD.text = GSDDDALoaing.chanGSDD.signinyhuGSDD?.gussUSerPayCount
    
        allBuifView.delegate = self
        allBuifView.dataSource = self
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }

    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}


extension GSDDWallentipminein:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (UIScreen.main.bounds.width - 4*12)/3, height: 150)
    }
}
