//
//  YourItemsMenu.swift
//  Flow
//
//  Created by flowerflower on 2019/3/8.
//  Copyright © 2019 FanQu. All rights reserved.
//

import UIKit

class YourItemsMenu: UIView, UICollectionViewDelegate, UICollectionViewDataSource {

    var collectionView: UICollectionView!;
    let menuCount = 135;
    var menuWidth: CGFloat { return self.bounds.width }
    let pgCtrlHeight: CGFloat = 15.0
    var menuHeight: CGFloat { return self.bounds.height - 15.0 }
    let menuRowCount: Int = 2
    let menuColCount: Int = 4
    var menuPageVolume: Int { return menuRowCount * menuColCount }
    let horizontalMargin: CGFloat = 15.0
    let topMargin: CGFloat = 15.0
    let bottomMargin: CGFloat = 1.0
    let interSpacing: CGFloat = 10.0
    let lineSpacing: CGFloat = 10.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray
        let layout = KCollectionViewFlowLayout()
        layout.menuColCount = self.menuColCount
        layout.menuWidth = self.menuWidth
        collectionView = UICollectionView.init(frame: CGRect(x: 0, y: 0, width: menuWidth, height: menuHeight), collectionViewLayout: layout)
        self.addSubview(collectionView)
        layout.sectionInset = UIEdgeInsets(top: topMargin, left: horizontalMargin, bottom: bottomMargin, right: horizontalMargin)
        layout.minimumLineSpacing = lineSpacing
        layout.minimumInteritemSpacing = interSpacing
        let itemWidth = (menuWidth - 2 * horizontalMargin - CGFloat(menuColCount - 1) * interSpacing) / CGFloat(menuColCount)
        let itemHeight = (menuHeight - topMargin - bottomMargin - CGFloat(menuRowCount - 1) * lineSpacing) / CGFloat(menuRowCount)
        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
        layout.scrollDirection = .horizontal
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = UIColor.lightGray
        collectionView .register(UINib(nibName: "ShowInfoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        let sectionCount = (menuCount + (menuPageVolume - 1)) / (menuPageVolume);
        return sectionCount;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let sectionCount = (menuCount + (menuPageVolume - 1)) / (menuPageVolume);
        if section < sectionCount - 1 {
            return menuPageVolume
        } else {
            return menuCount % menuPageVolume
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ShowInfoCollectionViewCell
        cell.lblTitle.text = "\(indexPath.section): \(indexPath.row)"
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let index = indexPath.section * menuPageVolume + indexPath.row
        print(index)
    }

}


