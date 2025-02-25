//
//  GSDDLisstingPlazyComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/21.
//

import UIKit

class GSDDLisstingPlazyComin: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    var changvlodeoGS:Array<GSDDAbountUserinfo>{
        return  GSDDDALoaing.chanGSDD.loafingDaGSDD.filter { DictionGSDD in
            return DictionGSDD.gsddPodermp4path != nil
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.upfloorGSDListview {
            return GSDDDALoaing.chanGSDD.loafingDaGSDD.count
        }
        return changvlodeoGS.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.upfloorGSDListview {
            let gsddCEll = collectionView.dequeueReusableCell(withReuseIdentifier: "upfloorGSDListviewCEllID", for: indexPath) as! GSDDLisstingPlazyAvtoCell
            gsddCEll.gsddAvotp.image = UIImage(named: GSDDDALoaing.chanGSDD.loafingDaGSDD[indexPath.row].gsddPIav)
            return gsddCEll
        }
        
        let gsddCEll = collectionView.dequeueReusableCell(withReuseIdentifier: "defloorVbolGSDListviewID", for: indexPath) as! GSDDLisstingPlazyCiceoCell
        
        gsddCEll.videokoCoverGSDD.image = UIImage.init(named:self.changvlodeoGS[indexPath.row].gsddPIav )
        
        gsddCEll.vioklNamenGSDD.text =  self.changvlodeoGS[indexPath.row].gsdd4pathVideoName
        gsddCEll.videghuContenGS.text =  self.changvlodeoGS[indexPath.row].gsddPodercontentext
        
        gsddCEll.poinusericonGSDD.image = UIImage(named:self.changvlodeoGS[indexPath.row].gsddPIav )
        gsddCEll.useringNAmeGS.text =
        self.changvlodeoGS[indexPath.row].gsddNjmet
        
        
        gsddCEll.zanGSDD.isSelected = self.changvlodeoGS[indexPath.row].toVidreStatusGSDD
        gsddCEll.liaortyGSDD.isSelected = self.changvlodeoGS[indexPath.row].ifCollVidre
        return gsddCEll
        
    }
    
    
    
    

    private  var upfloorGSDListview:UICollectionView?
    private var defloorVbolGSDListview:UICollectionView?
   
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        defloorVbolGSDListview?.reloadData()
        upfloorGSDListview?.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

         //背景
         let nameringGSDD = UIImageView(image: UIImage.init(named: "mengbanGSDD"))
         nameringGSDD.frame = self.view.bounds
         nameringGSDD.contentMode = .scaleAspectFill
         view.addSubview(nameringGSDD)
         
         
         //backutton
         let bagcloGSDD = UIButton.init(frame: CGRect.init(x:18, y: framtipStartinset, width: 30, height: 30))
         bagcloGSDD.setBackgroundImage(UIImage.init(named: "backDSGG"), for: .normal)
        
         bagcloGSDD.addTarget(self, action: #selector(bagerinOkayot), for: .touchUpInside)
     
         view.addSubview(bagcloGSDD)
        
        //takeutton
        let takeloGSDD = UIButton.init()
        takeloGSDD.setBackgroundImage(UIImage.init(named: "gsddPoVideo"), for: .normal)
       
        takeloGSDD.addTarget(self, action: #selector(takeinginOkayot), for: .touchUpInside)
    
        view.addSubview(takeloGSDD)
        takeloGSDD.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(17)
            make.centerY.equalTo(bagcloGSDD)
            make.width.height.equalTo(30)
            
        }
         
         
         let emionext = UILabel.init()
         emionext.text = "Listening Plaza"
         emionext.textColor = .white
         emionext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
         view.addSubview(emionext)
         emionext.snp.makeConstraints { make in
             make.centerX.equalToSuperview()
             make.centerY.equalTo(bagcloGSDD)
         }
        
        
        let floweladou = UICollectionViewFlowLayout.init()
        floweladou.scrollDirection = .horizontal
        floweladou.minimumLineSpacing = 15.x_GSDD
        floweladou.minimumInteritemSpacing = 15.x_GSDD
        floweladou.itemSize = CGSize(width: 68, height: 68)
        upfloorGSDListview = UICollectionView(frame: .zero, collectionViewLayout: floweladou)
        upfloorGSDListview?.showsHorizontalScrollIndicator = false
        upfloorGSDListview?.delegate = self
        upfloorGSDListview?.backgroundColor = .clear
        upfloorGSDListview?.dataSource = self
        upfloorGSDListview?.register(GSDDLisstingPlazyAvtoCell.self, forCellWithReuseIdentifier: "upfloorGSDListviewCEllID")
        
        view.addSubview(upfloorGSDListview!)
        upfloorGSDListview?.snp.makeConstraints({ make in
            make.height.equalTo(68)
            make.left.equalToSuperview().inset(12)
            make.right.equalToSuperview()
            make.top.equalTo(bagcloGSDD.snp.bottom).offset(29)
        })
        
        
        
        let floweladouert = UICollectionViewFlowLayout.init()
       
        floweladouert.minimumLineSpacing = 15.x_GSDD
        floweladouert.minimumInteritemSpacing = 16
        floweladouert.itemSize = CGSize(width: UIScreen.main.bounds.width - 30, height: 345)
        defloorVbolGSDListview = UICollectionView(frame: .zero, collectionViewLayout: floweladouert)
        defloorVbolGSDListview?.showsVerticalScrollIndicator = false
        defloorVbolGSDListview?.delegate = self
        defloorVbolGSDListview?.backgroundColor = .clear
        defloorVbolGSDListview?.dataSource = self
        defloorVbolGSDListview?.register(UINib.init(nibName: "GSDDLisstingPlazyCiceoCell", bundle: nil), forCellWithReuseIdentifier: "defloorVbolGSDListviewID")
        defloorVbolGSDListview?.isHidden = true
        view.addSubview(defloorVbolGSDListview!)
        defloorVbolGSDListview?.snp.makeConstraints({ make in
            make.bottom.equalToSuperview()
            
            make.left.right.equalToSuperview().inset(15)
            
            make.top.equalTo(upfloorGSDListview!.snp.bottom).offset(26)
        })
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        let loadinftext = AppDelegate.descBABAString(upcaseGS: "liorakdiitnzgn.u.e.")
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loadinftext)
        gsdd_loadActiveViw.begin_GSDDAnimating()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
            self.defloorVbolGSDListview?.isHidden = false
            
            
        }
    }
    
    

    @objc  func takeinginOkayot() {
        
        let takeing = GSDDBPoberViserComin.init()
        
        self.navigationController?.pushViewController(takeing, animated: true
        )
    }
    
    
    @objc  func bagerinOkayot() {
        self.navigationController?.popViewController(animated: true)
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.upfloorGSDListview {
            self.navigationController?.pushViewController(GSDDOgthsdergtaoDComin.init(plazDeinGSDD: GSDDDALoaing.chanGSDD.loafingDaGSDD[indexPath.row]), animated: true)
            return
        }
        let enterGSDDPlazin = GSDDPlazdegtaoDComin.init(plazDeinGSDD: self.changvlodeoGS[indexPath.row])
        
        self.navigationController?.pushViewController(enterGSDDPlazin, animated: true)
        
    }
}
