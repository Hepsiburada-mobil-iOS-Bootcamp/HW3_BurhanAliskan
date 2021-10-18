//
//  CharacterListViewController.swift
//  iOS_Week_3
//
//  Created by Burhan Alışkan on 18.10.2021.
//

import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {

    private var itemListView: ItemListView!
    
    override func prepareViewControllerSetup() {
        super.prepareViewControllerSetup()
        addMainComponent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func addMainComponent() {
        itemListView = ItemListView()
        itemListView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(itemListView)
        
        NSLayoutConstraint.activate([
            itemListView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            itemListView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            itemListView.topAnchor.constraint(equalTo: view.topAnchor),
            itemListView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}
