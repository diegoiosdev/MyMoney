//
//  SportTableViewCell.swift
//  MyMoney
//
//  Created by Diego Fernando on 30/06/22.
//

import UIKit

class SportTableViewCell: UITableViewCell {
 

    var sportTableViewCellScreen:SportTableViewCellScreen = SportTableViewCellScreen()
    
    var data:[Sport] = []
    
    static let identifier:String = "SportTableViewCell"
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configContraints()
        self.sportTableViewCellScreen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubview() {
        self.contentView.addSubview(self.sportTableViewCellScreen)
    }
    
    
    func configConstraintsSportTableViewCellScree(){
        self.sportTableViewCellScreen.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    public func dataCollection(data:[Sport]){
        self.data = data
        
    }
    
    func configContraints() {
            NSLayoutConstraint.activate([
  
              self.sportTableViewCellScreen.centerYAnchor.constraint(equalTo: self.centerYAnchor),
              self.sportTableViewCellScreen.leftAnchor.constraint(equalTo: self.leftAnchor),
              self.sportTableViewCellScreen.rightAnchor.constraint(equalTo: self.rightAnchor),
              self.sportTableViewCellScreen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
         ])
     }
    
}


extension  SportTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.data.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell:SportCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: SportCollectionViewCell.identifier, for: indexPath) as? SportCollectionViewCell
    cell?.setupCell(data: self.data[indexPath.row])
    
    
    return  cell ?? UICollectionViewCell()
   }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 140, height: 100)
    }
    
}
