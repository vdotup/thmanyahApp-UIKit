//
//  SideBarView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 27/12/2021.
//

import UIKit

class SideBarView: UIView {
    
    let sideBarButton: UIButton = {
        let button = UIButton()
        
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .medium, scale: .medium)
        let symbol = UIImage(systemName: "pause", withConfiguration: symbolConfig)
        
        button.setImage(symbol, for: .normal)
        button.tintColor = .vermilion
        button.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2.0)
        return button
    }()
    
    let vstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 15
        return stack
    }()
    
    let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "thmanyah-logo")
        return imageView
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic-SemiBold", size: 26)
        label.text = landing_subtitle
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic", size: 18)
        label.text = landing_description
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let readMoreButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic-SemiBold", size: 18)
        button.setTitle("اقرأ المزيد", for: .normal)
        button.setTitleColor(.vermilion, for: .normal)
        button.setTitleColor(.white, for: .selected)
        button.tintColor = .green
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .bone
        
        addSubview(sideBarButton)
        sideBarButton.anchor(top: topAnchor,
                             leading: leadingAnchor,
                             padding: .init(top: 50, left: 30, bottom: 0, right: 0))
        
        addSubview(logoImage)
        logoImage.anchor(top: sideBarButton.bottomAnchor,
                         centerX: centerXAnchor,
                         widthConstant: 143, heightConstant: 90,
                         padding: .init(top: 75, left: 0, bottom: 0, right: 0))
        
        addSubview(vstack)
        vstack.anchor(top: logoImage.bottomAnchor,
                      leading: leadingAnchor,
                      bottom: bottomAnchor,
                      trailing: trailingAnchor,
                      padding: .init(top: 40, left: 40, bottom: 85, right: 40))
        
        vstack.addArrangedSubview(subtitleLabel)
        vstack.addArrangedSubview(descriptionLabel)
        vstack.addArrangedSubview(readMoreButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
