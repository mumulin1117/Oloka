//
//  GSDDGuessNOMokiotoer.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/21.
//

import UIKit
protocol GSDDGuessNOMokiotoerDelegate {
    func ifSppendToCheckGSDD(boif:Bool)
}


//猜对猜错提示框
class GSDDGuessNOMokiotoer: UIViewController {
    var delegsdd:GSDDGuessNOMokiotoerDelegate?
    
    @IBOutlet weak var emojistatusGSDD: UIImageView!
    
    @IBOutlet weak var bigcontetnGSDD: UILabel!
    @IBOutlet weak var smllcontetnGSDD: UILabel!
   
    @IBOutlet weak var onceAgeinGSDD: UIButton!
    
    @IBOutlet weak var answiergeinGSDD: UIButton!
    
    
    var isCorrentGSDD:Bool = false
    init( isCorrentGSDD: Bool) {
      
        self.isCorrentGSDD = isCorrentGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if isCorrentGSDD == true {
            emojistatusGSDD.image = UIImage(named: "bangbauio")
            bigcontetnGSDD.text = "Bingo!"
            smllcontetnGSDD.text = "You guessed it right! Well done!"
            onceAgeinGSDD.isHidden = true
            
            answiergeinGSDD.setTitle("I Know", for: .normal)
            answiergeinGSDD.setImage(nil, for: .normal)
        }
    }


    @IBAction func answeiGDSSD(_ sender: UIButton) {
         if isCorrentGSDD == true  {
            //我知道
             self.dismiss(animated: true)
         }else{
            //花钱知道答案
             
             //花钱了
             self.dismiss(animated: true)
             if delegsdd != nil {
                 self.delegsdd?.ifSppendToCheckGSDD(boif: true)
             }
         }
        
        
    }
    
    
    @IBAction func onceAgeinGDSSD(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
}
