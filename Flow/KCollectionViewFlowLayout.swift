//
//  KCollectionViewFlowLayout.swift
//  Flow
//
//  Created by flowerflower on 2019/3/8.
//  Copyright © 2019 FanQu. All rights reserved.
//

import UIKit

class KCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    var menuWidth: CGFloat!
    var menuColCount: Int! = nil
    
    override var collectionViewContentSize: CGSize {
        let formalSize = super.collectionViewContentSize
        let width = CGFloat((self.collectionView?.numberOfSections)!) * menuWidth
        return CGSize(width: width, height: formalSize.height)
    }

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let attrs: [UICollectionViewLayoutAttributes] = super.layoutAttributesForElements(in: rect)!
        let sectionInset = self.sectionInset
        for (_, v) in attrs.enumerated() {
            let attr: UICollectionViewLayoutAttributes = v
            attr.frame = CGRect(x: sectionInset.left + CGFloat(attr.indexPath.row % menuColCount) * (itemSize.width + minimumInteritemSpacing) + CGFloat(attr.indexPath.section) * menuWidth, y: sectionInset.top + CGFloat(attr.indexPath.row / menuColCount) * (itemSize.height + minimumLineSpacing), width: self.itemSize.width, height: self.itemSize.height)
        }
        return attrs
    }
}
