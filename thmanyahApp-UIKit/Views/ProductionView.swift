//
//  ProductionView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 25/12/2021.
//

import UIKit

class ProductionView: UIView {
    
    let imageBannerView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.anchor(heightConstant: 100)
        return view
    }()
    
    let vstak: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 20
        return stack
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic-SemiBold", size: 30)
        label.text = production_title
        label.numberOfLines = 0
        label.textColor = .vermilion
        label.textAlignment = .center
        label.anchor(widthConstant: 300)
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic-SemiBold", size: 17)
        label.text = production_description
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        
        addSubview(vstak)
        vstak.addArrangedSubview(imageBannerView)
        vstak.addArrangedSubview(subtitleLabel)
        vstak.addArrangedSubview(descriptionLabel)
        vstak.anchor(top: topAnchor,
                     leading: leadingAnchor,
                     bottom: bottomAnchor,
                     trailing: trailingAnchor,
                     padding: .init(top: 100, left: 20, bottom: 100, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
