//
//  HomeScreen.swift
//  MyMoney
//
//  Created by Diego Fernando on 29/06/22.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var tableView:UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.register(UserDetailTableViewCell.self, forCellReuseIdentifier: UserDetailTableViewCell.identifier)
        tableView.register(SportTableViewCell.self, forCellReuseIdentifier: SportTableViewCell.identifier)
        return tableView
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.addSubview()
        self.setNeedsConstraints()
    }
    
    
    public func configTaleViewProtocols(delegate:UITableViewDelegate, dataSource:UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
        
    }
    
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 30/100, green: 100/255, blue: 104/300, alpha: 1.0)
        
    }
    
    func addSubview() {
        self.addSubview(self.tableView)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Settings Constraints
    
    private func setNeedsConstraints() { NSLayoutConstraint.activate([
        self.tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
        self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
        self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
        self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
    
    ])
   }
}
