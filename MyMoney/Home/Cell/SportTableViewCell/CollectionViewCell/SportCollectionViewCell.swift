//
//  SportCollectionViewCell.swift
//  MyMoney
//
//  Created by Diego Fernando on 30/06/22.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    
    static let identifier:String = "SportCollectionViewCell"
 
    let sportCollectionViewCellSreen:SportCollectionViewCellScreen = SportCollectionViewCellScreen()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.configContraints()
    }
    
    public func setupCell(data:Sport){
        self.sportCollectionViewCellSreen.imageView.image = UIImage(named: data.nameImage)
        self.sportCollectionViewCellSreen.sportName.text = data.name
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.sportCollectionViewCellSreen.layer.borderWidth = 6.0
        self.sportCollectionViewCellSreen.layer.borderColor = UIColor.blue.cgColor
        self.sportCollectionViewCellSreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportCollectionViewCellSreen)
    }
    
    func configContraints() {
              NSLayoutConstraint.activate([
                self.sportCollectionViewCellSreen.topAnchor.constraint(equalTo: self.topAnchor),
                self.sportCollectionViewCellSreen.leftAnchor.constraint(equalTo: self.leftAnchor),
                self.sportCollectionViewCellSreen.rightAnchor.constraint(equalTo: self.rightAnchor),
                self.sportCollectionViewCellSreen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
          ])
       }
}
