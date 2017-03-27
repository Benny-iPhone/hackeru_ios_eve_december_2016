//
//  ViewController.swift
//  CollectionViewProject
//
//  Created by hackeru on 27/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        
        cell.config(with: "item \(indexPath.item)")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "section_header", for: indexPath)
            let label = header.viewWithTag(1) as? UILabel
            label?.text = "Section \(indexPath.section) Header"
            
            return header
        case UICollectionElementKindSectionFooter:
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "section_footer", for: indexPath)
            let label = footer.viewWithTag(1) as? UILabel
            label?.text = "Section \(indexPath.section) Footer"
            
            return footer
        default:
            return UICollectionReusableView()
        }
        
        
        
    }
    


}











