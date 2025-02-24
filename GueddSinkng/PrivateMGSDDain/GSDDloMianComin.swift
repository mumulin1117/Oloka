//
//  GSDDloMianComin.swift
//  GueddSinkng
//
//  Created by GueddSinkng on 2025/2/19.
//

import UIKit
import iCarousel
import Hero
extension Double {
    
    var x_GSDD: CGFloat {
        return UIScreen.main.bounds.width * CGFloat(self) / 375.0
    }
    
    var y_GSDD: CGFloat {
        return UIScreen.main.bounds.height * CGFloat(self) / 812.0
    }
}

struct GSDDAbountUserinfo {
    var gsddUID:String
    var gsddNjmet:String
    var gsddPIav:String
    
    var gsddVBrief:String
    
    var gussMusicname:String?
    var gussMusicPath:String?
    
    var gsddPoderCover:String?
    var gsddPodercontentext:String?
    var gsddPodermp4path:String?
    
    var toVidreStatusGSDD:Bool = false
    var ifFolooweUser:Bool = false
    
    var ifCollVidre:Bool = false
    
    init(gsddUID: String, gsddNjmet: String, gsddPIav: String, gsddVBrief:String
    ,gussMusicname: String? = nil, gussMusicPath: String? = nil, gsddPoderCover: String? = nil, gsddPodercontentext: String? = nil, gsddPodermp4path: String? = nil) {
        self.gsddUID = gsddUID
        self.gsddNjmet = gsddNjmet
        self.gsddPIav = gsddPIav
        self.gsddVBrief = gsddVBrief
        self.gussMusicname = gussMusicname
        self.gussMusicPath = gussMusicPath
        self.gsddPoderCover = gsddPoderCover
        self.gsddPodercontentext = gsddPodercontentext
        self.gsddPodermp4path = gsddPodermp4path
    }
    
}

struct GSDDDALoaing {
    static var chanGSDD = GSDDDALoaing.init()
    
    var loafingDaGSDD:Array<GSDDAbountUserinfo> =  Array<GSDDAbountUserinfo>()
    
    init(){
        guard let path = Bundle.main.path(forResource: "GSDDBinLinkS", ofType: "plist"),
              let data = FileManager.default.contents(atPath: path) else {
            return
        }
        if let dictArray = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: String]]  {
            for item in dictArray {
                
                let mokler =  GSDDAbountUserinfo.init(gsddUID: item["gsddUID"] ?? "",
                                                      gsddNjmet: item["gsddNjmet"] ?? "",
                                                      gsddPIav: item["gsddPIav"] ?? "", gsddVBrief: item["guessUserBrief"] ?? "",
                                                      gussMusicname: item["gussMusicname"],
                                                      gussMusicPath: item["gussMusicPath"],
                                                      gsddPoderCover: item["gsddPoderCover"],
                                                      gsddPodercontentext: item["gsddPodercontentext"],
                                                      gsddPodermp4path: item["gsddPodermp4path"]
                )
                
                loafingDaGSDD.append(mokler)
            }
            
        }
        
        
    }
}





class GSDDloMianComin: UIViewController, iCarouselDataSource, iCarouselDelegate {
  
    
    let plaDGSSzaGSDD = UIButton.init()
    
    let postDGSSzaGSDD = UIButton.init()
    
    let releasechangeDGSSzaGSDD = UIButton.init()
    
    
    let threedShingView = iCarousel.init()
    
    var guessDutaGS:Array<GSDDAbountUserinfo>{
        return  GSDDDALoaing.chanGSDD.loafingDaGSDD.filter { DictionGSDD in
            return DictionGSDD.gussMusicname != nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        //背景
        let nameringGSDD = UIImageView(image: UIImage.init(named: "loginiONfGSDD"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
        view.addSubview(nameringGSDD)
        
        
        //persontton
        let personiconGSDD = UIButton.init(frame: CGRect.init(x:13, y: framtipStartinset, width: 44, height: 44))
        personiconGSDD.setBackgroundImage(UIImage.init(named: "topersoniconDGSS"), for: .normal)
       
        personiconGSDD.addTarget(self, action: #selector(personcenterinOkayot), for: .touchUpInside)
    
        view.addSubview(personiconGSDD)
        
        //meaaagetton
        let messagrreGSDD = UIButton.init()
        messagrreGSDD.setBackgroundImage(UIImage.init(named: "messagrticon"), for: .normal)
       
        messagrreGSDD.addTarget(self, action: #selector(meaageenterinOkayot), for: .touchUpInside)
    
        view.addSubview(messagrreGSDD)
        messagrreGSDD.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(13)
            make.width.height.equalTo(personiconGSDD)
            make.centerY.equalTo(personiconGSDD)
        }
        
        //label
        let titRead = UILabel.init()
        titRead.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titRead.text = "Hi,welcome!😀"
        titRead.textColor = UIColor.white
        titRead.textAlignment = .left
        
        view.addSubview(titRead)
        titRead.snp.makeConstraints { make in
            make.centerY.equalTo(personiconGSDD)
            make.leading.equalTo(personiconGSDD.snp.trailing).offset(5)
        }
        
        plaDGSSzaGSDD.setBackgroundImage(UIImage(named: "plazyulisting"), for: .normal)
        postDGSSzaGSDD.setBackgroundImage(UIImage(named: "plapostzyulisting"), for: .normal)
        plaDGSSzaGSDD.addTarget(self, action: #selector(plazyeenterinOkayot), for: .touchUpInside)
        postDGSSzaGSDD.addTarget(self, action: #selector(postSonenterinOkayot), for: .touchUpInside)
        view.addSubview(plaDGSSzaGSDD)
        view.addSubview(postDGSSzaGSDD)
        
        let somneX = 168.x_GSDD
        plaDGSSzaGSDD.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15.x_GSDD)
            make.top.equalTo(personiconGSDD.snp.bottom).offset(11)
            make.width.equalTo(somneX)
            make.height.equalTo(110.x_GSDD)
        }
        
        postDGSSzaGSDD.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-15.x_GSDD)
            make.top.equalTo(personiconGSDD.snp.bottom).offset(11)
            make.width.equalTo(somneX)
            make.height.equalTo(110.x_GSDD)
        }
        
        //changeimg
        let changegGSDD = UIImageView(image: UIImage.init(named: "changetexticon"))
        
        changegGSDD.contentMode = .scaleAspectFill
        view.addSubview(changegGSDD)
        changegGSDD.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(plaDGSSzaGSDD.snp.bottom).offset(12)
            make.width.equalTo(230.x_GSDD)
            make.height.equalTo(70.x_GSDD)
        }
        
        //release
        let changegerGSDD = UIImageView(image: UIImage.init(named: "diomeonsdDSGG"))
        view.addSubview(changegerGSDD)
        changegerGSDD.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.bottom.equalToSuperview().offset(-30 - safeAreaBottomInset)
            make.leading.equalToSuperview().offset(25)
        }
        let relaseRead = UILabel.init()
        relaseRead.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        relaseRead.text = "Release challenge"
        relaseRead.textColor = UIColor.white
        relaseRead.textAlignment = .left
        view.addSubview(relaseRead)
        relaseRead.snp.makeConstraints { make in
            make.left.equalTo(changegerGSDD.snp.right).offset(8)
            make.centerY.equalTo(changegerGSDD)
        }
        let cijkiorGSDD = UIImageView(image: UIImage.init(named: "iconnextion"))
        view.addSubview(cijkiorGSDD)
        cijkiorGSDD.snp.makeConstraints { make in
            make.width.equalTo(42.x_GSDD)
            make.height.equalTo(20.x_GSDD)
            make.leading.equalTo(relaseRead.snp.trailing)
            make.centerY.equalTo(relaseRead)
        }
        
        releasechangeDGSSzaGSDD.setBackgroundImage(UIImage.init(named: "gointerinser"), for: .normal)
        releasechangeDGSSzaGSDD.addTarget(self, action: #selector(postSonenterinOkayot), for: .touchUpInside)
        view.addSubview(releasechangeDGSSzaGSDD)
        releasechangeDGSSzaGSDD.snp.makeConstraints { make in
            make.width.height.equalTo(100.x_GSDD)
            make.centerY.equalTo(changegerGSDD)
            make.leading.equalTo(cijkiorGSDD.snp.trailing).offset(11.x_GSDD)
        }
        //中间的数据
        
       
        threedShingView.dataSource = self
        threedShingView.delegate = self
        threedShingView.type = .rotary // 选择 3D 效果类型
        threedShingView.autoscroll = 0.5
        
        view.addSubview(threedShingView)
        threedShingView.snp.makeConstraints({ make in
            make.left.right.equalToSuperview()
            make.top.equalTo(changegGSDD.snp.bottom).offset(25.y_GSDD)
            make.bottom.equalTo(releasechangeDGSSzaGSDD.snp.top).offset(-13.y_GSDD)
        })
        
      
        
       
    }
    
    //个人中心
    @objc  func personcenterinOkayot() {
        self.navigationController?.pushViewController(GSDDMeGSDDComin.init(), animated: true)
    }
    //消息中心
    @objc  func meaageenterinOkayot() {
        self.navigationController?.pushViewController(GSDDBegMeagComin.init(), animated: true)
    }
    
    //广场中心
    @objc  func plazyeenterinOkayot() {
        self.navigationController?.pushViewController(GSDDLisstingPlazyComin.init(), animated: true)
    }
    
    //发布中心son
    @objc  func postSonenterinOkayot() {
        self.navigationController?.pushViewController(GSDDPoGusSonMokiotoer.init(), animated: true)
    }
    
    //发布chanllge
//    @objc  func postchanllgeerinOkayot() {
//        
//    }

    
    func numberOfItems(in carousel: iCarousel) -> Int {
        self.guessDutaGS.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let itemView: GSDDgussMainView
              
        if let reusedView = view {
            itemView = reusedView as! GSDDgussMainView
        } else {
            itemView = GSDDgussMainView.loadFromNib()
            itemView.frame = CGRect.init(x: 0, y: 0, width: 250.x_GSDD, height: 355.x_GSDD)
           
        }
        itemView.usGSDDPivc.image = UIImage(named: self.guessDutaGS[index].gsddPIav)
        
        itemView.ranGSDDIcon.image = UIImage.init(named: "ipho_gs_\(Int.random(in: 3...7))")
        
        itemView.usGSDDPivc.layer.cornerRadius = 90
        itemView.usGSDDPivc.layer.masksToBounds = true
        
        itemView.ranGSDDIcon.layer.cornerRadius = 15
        itemView.ranGSDDIcon.layer.masksToBounds = true
        
        return itemView
    }
    
    func carousel(_ carousel: iCarousel, didSelectItemAt index: Int) {
        carousel.hero.id = "\(index)"
        
        let shinGuessvc = GSDDStaruGuessMokiotoer.init(mudalGSDD: self.guessDutaGS[index])
        shinGuessvc.modalPresentationStyle = .fullScreen
        shinGuessvc.hero.isEnabled = true
        shinGuessvc.hero.modalAnimationType = .zoomSlide(direction: .left)
        shinGuessvc.view.hero.id = "\(index)"
        self.present(shinGuessvc, animated: true)
        
    }
    
}
