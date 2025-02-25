//
//  GSDDCsatminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit
//chat
class GSDDCsatminein: GSDDUserilcomine, UITableViewDataSource, UITableViewDelegate {
    var gsddBuilding:Array<String> = Array<String>()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        gsddBuilding.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tabcell = tableView.dequeueReusableCell(withIdentifier: "GSDDChikerCellID", for: indexPath) as! GSDDChikerCell
        tabcell.gsddLacontenSay.text = gsddBuilding[indexPath.row]
        return tabcell
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
        fatalError("")
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
        
        initTAbleChatGSDD.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        initTAbleChatGSDD.layer.cornerRadius = 20
        
        
        
        
        nameingjhtinhGSDD.text = plazDeinGSDD.gsddNjmet
        sizeGSDDUserpIC.image = UIImage(named: plazDeinGSDD.gsddPIav)
    }

    //举报拉嘿
    @IBAction func GSddRepPoprationNoing(_ sender: UIButton) {
        self.showBlockOrReportAlert(targeGSDDIUID: plazDeinGSDD.gsddUID)
        
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
        
        if gsddOploip.text?.isEmpty  == true || gsddOploip.text == nil {
            return
        }
        gsddBuilding.append( gsddOploip.text!)
        initTAbleChatGSDD.reloadData()
        gsddOploip.text = nil
        gsddOploip.resignFirstResponder()
        
        
        
        
    }
    
}



class GSDDChikerCell: UITableViewCell {
    
    let gsddLacontenSay = UILabel.init()
    let gsddView = UIView.init()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        
        contentView.addSubview(gsddView)
        gsddLacontenSay.numberOfLines = 0
        
        contentView.addSubview(gsddLacontenSay)
        
        gsddLacontenSay.font = UIFont(name: "☞Gilroy-Medium", size: 16)
        gsddLacontenSay.textColor = .white
        gsddView.layer.borderWidth = 2
        gsddView.backgroundColor = UIColor.clear
        gsddView.layer.cornerRadius = 16
        gsddView.layer.masksToBounds = true
        gsddView.layer.borderColor = UIColor(red: 0.59, green: 0.82, blue: 1, alpha: 1).cgColor
        gsddView.contentMode = .scaleAspectFill
        
        gsddLacontenSay.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(32)
            make.bottom.top.equalToSuperview().inset(24)
            
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
        fatalError("")
    }
}
