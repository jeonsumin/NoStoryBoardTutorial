//
//  CollectionViewController.swift
//  tutorial
//
//  Created by Terry on 2021/11/13.
//

import UIKit

private let collectionCellIdentifier = "cell"
private let collectionHeaderIdentifier = "header"
class CollectionViewController: UICollectionViewController {
    
    
    //MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: Properties
    let items = ["1","2","3","4","5","6","7","8","9","10"]
    
    
    //MARK: Configure
    func configure(){
        view.backgroundColor = .systemBackground
        
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: collectionCellIdentifier)
        collectionView.register(CollectionHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: collectionHeaderIdentifier)
    }
}

extension CollectionViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionCellIdentifier, for: indexPath) as! CollectionViewCell
        cell.item = items[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: collectionHeaderIdentifier, for: indexPath) as! CollectionHeaderCell
        
        return cell 
    }
}


extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    ///CollectionView Cell Size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 3) - 2 , height: (view.frame.width / 3) - 2)
    }
    
    /// CollectionViewCell 좌 우 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    /// CollectionViewCell 상 하 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    ///CollectionView Header Size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width , height: (view.frame.width / 3) * 2)
    }
    
}

