//
//  GSDDCsatminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit
//chat
class GSDDCsatminein: GSDDUserilcomine, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    var plazDeinGSDD:GSDDAbountUserinfo
    init(plazDeinGSDD: GSDDAbountUserinfo) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
  
    @IBOutlet weak var gsddOploip: UITextField!
    
   
    
    @IBOutlet weak var sizeGSDDUserpIC: UIImageView!
    
    @IBOutlet weak var nameingjhtinhGSDD: UILabel!
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var initTAbleChatGSDD: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTAbleChatGSDD.showsVerticalScrollIndicator = false
        initTAbleChatGSDD.dataSource = self
        initTAbleChatGSDD.delegate = self
        initTAbleChatGSDD.separatorStyle = .none
        initTAbleChatGSDD.register(GSDDChikerCell.self, forCellReuseIdentifier: "GSDDChikerCellID")
        initTAbleChatGSDD.estimatedRowHeight = 77
        initTAbleChatGSDD.rowHeight = UITableView.automaticDimension
        
        
        nameingjhtinhGSDD.text = plazDeinGSDD.gsddNjmet
        sizeGSDDUserpIC.image = UIImage(named: plazDeinGSDD.gsddPIav)
    }

    //举报拉嘿
    @IBAction func GSddRepPoprationNoing(_ sender: UIButton) {
        self.showBlockOrReportAlert(targetUserName: plazDeinGSDD.gsddUID)
        
    }
    
    
    @IBAction func GSddappbackNoing(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    //vide
    @IBAction func  touggleVIdeoinger() {
        self.navigationController?.pushViewController(GSDDCVioloiominein.init(plazDeinGSDD: self.plazDeinGSDD), animated: true)
    }
    
    
    
    //seng
    @IBAction func postmeaasge(_ sender: UIButton) {
        
        
        
        
    }
    
}



class GSDDChikerCell: UITableViewCell {
    
    let gsddLacontenSay = UILabel.init()
    let gsddView = UIView.init()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        
        contentView.addSubview(gsddView)
       
        
        gsddView.addSubview(gsddLacontenSay)
        
        gsddLacontenSay.font = UIFont(name: "☞Gilroy-Medium", size: 16)
        gsddLacontenSay.textColor = .white
        
        gsddView.backgroundColor = UIColor.clear
        gsddView.layer.cornerRadius = 16
        gsddView.layer.masksToBounds = true
        gsddView.contentMode = .scaleAspectFill
        
        gsddLacontenSay.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(21)
            make.bottom.top.equalToSuperview().inset(24)
            make.trailing.equalToSuperview().inset(32)
            make.width.lessThanOrEqualTo(296)
            make.width.greaterThanOrEqualTo(70)
        }
        
        gsddView.snp.makeConstraints { make in
            make.leading.equalTo(gsddLacontenSay.snp.leading).offset(-21)
            make.trailing.equalTo(gsddLacontenSay.snp.trailing).offset(12)
            make.top.equalTo(gsddLacontenSay).offset(-6)
            make.bottom.equalTo(gsddLacontenSay).offset(6)
           
           
        }
        
       
    }

    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
