//
//  MainViewController.swift
//  iOS_Week_3
//
//  Created by Burhan Alışkan on 10.10.2021.
//

import UIKit

class MainViewController: BaseViewController<MainViewModel> {

    
    private lazy var pushButton : UIButton = {
        let temp = UIButton(type: .system)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.setTitle("Push", for: .normal)
        temp.addTarget(self, action: .pushButtonTapped, for: .touchUpInside)
        return temp
    }()
    
    override func prepareViewControllerSetup() {
        super.prepareViewControllerSetup()
        addButton()
    }
    
    @objc func pushButtonAction(_ sender: UIButton) {
        print("Burhan")
        let testViewController = TestViewController()
        self.navigationController?.pushViewController(testViewController, animated: true)
    }
    
    func addButton() {
        view.addSubview(pushButton)
        pushButton.anchor(centerX: view.centerXAnchor, centerY: view.centerYAnchor)
    }
    
    
}

fileprivate extension Selector {
    static let pushButtonTapped =  #selector(MainViewController.pushButtonAction)
}

