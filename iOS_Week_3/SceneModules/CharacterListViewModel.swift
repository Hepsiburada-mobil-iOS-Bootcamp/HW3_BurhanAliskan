//
//  CharacterListViewModel.swift
//  iOS_Week_3
//
//  Created by Burhan Alışkan on 18.10.2021.
//

import Foundation

class CharacterListViewModel  {
    
}

extension CharacterListViewModel: ItemListProtocol {
    
    func getNumberOfSection() -> Int {
        return 0
    }
    
    func getNumberOfItem(in section: Int) -> Int {
        return 100
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        return nil
    }
    
    
}
