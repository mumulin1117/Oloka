//
//  GSDDloMianChangeCell.swift
//  GueddSinkng
//
//  Created by mumu on 2025/2/20.
//

import UIKit

class GSDDgussMainView: UIView {

    @IBOutlet weak var usGSDDPivc: UIImageView!
    
    
    
    @IBOutlet weak var playingmuscioGSDD: UIButton!
    
    
    @IBOutlet weak var ranGSDDIcon: UIImageView!
    
    
    
    
    class func loadFromNib() -> GSDDgussMainView {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: String(describing: self), bundle: bundle)
        return nib.instantiate(withOwner: nil, options: nil).first as! GSDDgussMainView
    }
    
  
    
 
    //
//    override init(frame: CGRect) {
//           super.init(frame: frame)
//           commonInit()
//       }
//       
//       required init?(coder aDecoder: NSCoder) {
//           super.init(coder: aDecoder)
//           commonInit()
//       }
//       
//       // MARK: - 公共初始化方法
//       private func commonInit() {
//           // 加载 XIB
//           let bundle = Bundle(for: type(of: self))
//           let nib = UINib(nibName: "GSDDgussMainView", bundle: nil)
//           guard let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
//               fatalError("Failed to load XIB")
//           }
//           
//           // 设置布局
//           contentView.frame = bounds
//           contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//           addSubview(contentView)
//           
//         
//       }
    
}
