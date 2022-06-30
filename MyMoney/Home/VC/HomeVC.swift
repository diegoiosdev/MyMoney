//
//  HomeVC.swift
//  MyMoney
//
//  Created by Diego Fernando on 29/06/22.
//

import UIKit

class HomeVC: UIViewController {

    var homeScreen:HomeScreen?
    var data:[DataUser] = [DataUser(name: "Diego", nameImage:""),
                           DataUser(name: "Daniella", nameImage:""),
                           DataUser(name: "Fernando", nameImage:"")
                           
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
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setUpCell(data: self.data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    
}

//let color:[UIColor] = [.orange,.black,.green,.red,.blue]
//let cell:UITableViewCell = UITableViewCell()
//cell.backgroundColor = color[indexPath.row]
