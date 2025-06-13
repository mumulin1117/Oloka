//
//  SongMindQuest.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class SongMindQuest: MelodyUserMindQuest, UITableViewDataSource, UITableViewDelegate {
    var gsddBuilding:Array<String> = Array<String>()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        gsddBuilding.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tabcell = tableView.dequeueReusableCell(withIdentifier: "GSDDChikerCellID", for: indexPath) as! GSDDChikerCell
        tabcell.gsddLacontenSay.text = gsddBuilding[indexPath.row]
        return tabcell
    }
    
    var plazDeinGSDD:UserformanceShowcase
    init(plazDeinGSDD: UserformanceShowcase) {
        self.plazDeinGSDD = plazDeinGSDD
        super.init(nibName: nil, bundle: nil)
    }
    
  
    @IBOutlet weak var gsddOploip: UITextField!
    
   
    
    @IBOutlet weak var sizeGSDDUserpIC: UIImageView!
    
    @IBOutlet weak var nameingjhtinhGSDD: UILabel!
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    @IBOutlet weak var melodyMystery: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        melodyMystery.showsVerticalScrollIndicator = false
        melodyMystery.dataSource = self
        melodyMystery.delegate = self
        melodyMystery.separatorStyle = .none
        melodyMystery.register(GSDDChikerCell.self, forCellReuseIdentifier: "GSDDChikerCellID")
        melodyMystery.estimatedRowHeight = 77
        melodyMystery.rowHeight = UITableView.automaticDimension
        
        melodyMystery.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        melodyMystery.layer.cornerRadius = 20
        
        
        
        
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
    @IBAction func  lyricalChallenge() {
        self.navigationController?.pushViewController(SoundCVioloiominein.init(plazDeinGSDD: self.plazDeinGSDD), animated: true)
    }
    
    
    
    //seng
    @IBAction func postmeaasge(_ sender: UIButton) {
        
        if gsddOploip.text?.isEmpty  == true || gsddOploip.text == nil {
            return
        }
        gsddBuilding.append( gsddOploip.text!)
        melodyMystery.reloadData()
        gsddOploip.text = nil
        gsddOploip.resignFirstResponder()
        
        
        
        
    }
    
}

extension DWeahingAllComin{
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        
        feedGSDD?.configuration.userContentController.add(self, name: AppDelegate.descBABAString(upcaseGS:"Piayy"))
        var reacount = challengeSubmissions.count + socialFeed.count
        reacount += 1
        if reacount < 1 {
            return
        }
        feedGSDD?.configuration.userContentController.add(self, name: AppDelegate.descBABAString(upcaseGS:"Celbotske"))
        
        feedGSDD?.configuration.userContentController.add(self, name: AppDelegate.descBABAString(upcaseGS:"psavgiejLzotasdheld"))
        
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
