//
//  StatsView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 25/12/2021.
//

import UIKit

class StatCell: UICollectionViewCell {
    
    let title: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic-SemiBold", size: 50)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = stats[0].title
        return label
    }()
    
    let hstak: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .top
        return stack
    }()
    
    let subtitle: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic-SemiBold", size: 20)
        label.textColor = .vermilion
        label.numberOfLines = 0
        label.textAlignment = .center
        label.sizeToFit()
        label.text = stats[0].subtitle
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        
        addSubview(title)
        addSubview(hstak)
        hstak.addArrangedSubview(subtitle)
        
        title.anchor(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, heightConstant: 50)
        hstak.anchor(top: title.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor,
                     padding: .init(top: 10, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class StatsView: UIView {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 180, height: 135)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionView.register(StatCell.self, forCellWithReuseIdentifier: "statCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        addSubview(collectionView)
        
        collectionView.anchor(top: topAnchor,
                              leading: leadingAnchor,
                              bottom: bottomAnchor,
                              trailing: trailingAnchor,
                              padding: .init(top: 120, left: 26, bottom: 0, right: 26))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension StatsView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stats.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "statCell", for: indexPath as IndexPath) as! StatCell
        cell.title.text = stats[indexPath.row].title
        cell.subtitle.text = stats[indexPath.row].subtitle
        return cell
    }
    
}
