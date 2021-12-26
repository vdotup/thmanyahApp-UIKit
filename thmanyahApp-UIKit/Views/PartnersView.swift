//
//  PartnersView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 26/12/2021.
//

import UIKit

class PartnersView: UIView {
    
    let partnersImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "partners")
        return imageView
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
        label.text = partners_title
        label.numberOfLines = 0
        label.textColor = .vermilion
        label.textAlignment = .center
        label.anchor(widthConstant: 300)
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic", size: 17)
        label.text = partners_description
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(partnersImage)
        partnersImage.anchor(top: topAnchor,
                             leading: leadingAnchor,
                             trailing: trailingAnchor,
                             heightConstant: 140,
                             padding: .init(top: 180, left: 10, bottom: 0, right: 10))
        
        addSubview(vstak)
        vstak.addArrangedSubview(subtitleLabel)
        vstak.addArrangedSubview(descriptionLabel)
        vstak.anchor(top: partnersImage.bottomAnchor,
                     leading: leadingAnchor,
                     bottom: bottomAnchor,
                     trailing: trailingAnchor,
                     padding: .init(top: 50, left: 20, bottom: 100, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
