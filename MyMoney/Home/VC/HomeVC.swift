//
//  HomeVC.swift
//  MyMoney
//
//  Created by Diego Fernando on 29/06/22.
//

import UIKit

class HomeVC: UIViewController {

    var homeScreen:HomeScreen?
    var dataUser:[DataUser] = [DataUser(name: "Diego", nameImage:"AppIcon76x76"),
                           DataUser(name: "Daniella", nameImage:"AppIcon76x76"),
                           DataUser(name: "Fernando", nameImage:"AppIcon76x76")
                           ]
    
    
    var dataSport:[Sport] = [Sport(name: "", nameImage: ""),
                             Sport(name: "", nameImage: ""),
                             Sport(name: "", nameImage: ""),
                             Sport(name: "", nameImage: ""),
    ]
    
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTaleViewProtocols(delegate: self, dataSource: self)
      
    }
}

// MARK: - Settings extension + tableView

extension HomeVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataUser.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3{
            let cell:SportTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SportTableViewCell.identifier, for: indexPath) as? SportTableViewCell
             cell?.dataCollection(data: self.dataSport)
            return cell ?? UITableViewCell()
        }
      
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setUpCell(data: self.dataUser[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}

//let color:[UIColor] = [.orange,.black,.green,.red,.blue]
//let cell:UITableViewCell = UITableViewCell()
//cell.backgroundColor = color[indexPath.row]
