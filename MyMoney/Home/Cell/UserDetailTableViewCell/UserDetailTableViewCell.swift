//
//  UserDetailTableViewCell.swift
//  MyMoney
//
//  Created by Diego Fernando on 29/06/22.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {

    static let identifier:String = "UserDetailTableViewCell"
    
    lazy  var userDetailView: UserDetailView = {
       let view = UserDetailView()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configConstraintsDescriptionCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func addSubview(){
        self.contentView.addSubview(self.userDetailView)
    }
    
    public func setUpCell(data:DataUser){
        self.userDetailView.nameLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }
        
      func configConstraintsDescriptionCell() {
        self.userDetailView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
       }
  }
}
