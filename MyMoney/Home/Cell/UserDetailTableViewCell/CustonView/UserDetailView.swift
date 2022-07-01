//
//  UserDetailView.swift
//  MyMoney
//
//  Created by Diego Fernando on 30/06/22.
//

import UIKit

class UserDetailView: UIView{

    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Time")
        image.tintColor = .darkGray
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var nameLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "Bem Vindo"
        return label
    }()
    
    
    
   override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview(){
       self.addSubview(self.userImageView)
       self.addSubview(self.nameLabel)
   }
    
    
    private  func setUpContraints() {
          NSLayoutConstraint.activate([

            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userImageView.heightAnchor.constraint(equalToConstant: 50),
            self.userImageView.widthAnchor.constraint(equalToConstant: 50),

            self.nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.nameLabel.leadingAnchor.constraint(equalTo:self.userImageView.trailingAnchor,constant: 20),


       ])
   }
    
    func configUserImageViewConstraints() {
        self.userImageView.snp.makeConstraints { (make) in
            make.centerY.leading.equalToSuperview()
            make.height.width.equalTo(80)
        }
    }
    
    func configNameLabelConstraints() {
        self.nameLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(self.userImageView.snp.trailing).offset(20)
        }
    }
}
