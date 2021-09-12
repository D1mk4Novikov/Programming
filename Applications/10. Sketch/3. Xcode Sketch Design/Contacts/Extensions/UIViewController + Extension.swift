//
//  UIViewController + Extension.swift
//  Contacts
//
//  Created by Dimka Novikov on 13.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func configure<T: SelfConfiguringCell>(collectionView: UICollectionView, cellType: T.Type, with user: ContactsModel.User, for indexPath: IndexPath) -> T {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellType.reuseId, for: indexPath) as? T else { fatalError( "Unable to dequeue \(cellType)") }
        cell.configure(with: user)
        return cell
    }
}
