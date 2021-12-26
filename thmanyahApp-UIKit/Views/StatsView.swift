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
        label.sizeToFit()
        return label
    }()
    
    let vstak: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 0
        return stack
    }()
    
    let hstak: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .top
        return stack
    }()
    
    let subtitle: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic-SemiBold", size: 18)
        label.textColor = .vermilion
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = stats[0].subtitle
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(vstak)
        vstak.addArrangedSubview(title)
        vstak.addArrangedSubview(hstak)
        hstak.addArrangedSubview(subtitle)
        vstak.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class StatsView: UIView {
    
    let vstack: UIStackView = {
        let stack = UIStackView()
        stack.backgroundColor = .green
        stack.axis = .vertical
        stack.spacing = 0
        return stack
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 163, height: 130)
        layout.minimumLineSpacing = 20
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.anchor(heightConstant: 580)
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionView.register(StatCell.self, forCellWithReuseIdentifier: "statCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        addSubview(vstack)
        vstack.addArrangedSubview(collectionView)
        
        vstack.anchor(top: topAnchor,
                              leading: leadingAnchor,
                              bottom: bottomAnchor,
                              trailing: trailingAnchor,
                              padding: .init(top: 120, left: 40, bottom: 170, right: 40))
        
        collectionView.sizeToFit()
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
