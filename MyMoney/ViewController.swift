//
//  ViewController.swift
//  MyMoney
//
//  Created by Diego Fernando on 26/06/22.
//

import UIKit
import SnapKit


class ViewController: UIViewController {


    private lazy var searchController: UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Buscar"
        sc.searchBar.autocapitalizationType = .allCharacters
        return sc
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationItem.searchController = searchController
        
    }
}

extension ViewController: UISearchResultsUpdating, UISearchControllerDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}


