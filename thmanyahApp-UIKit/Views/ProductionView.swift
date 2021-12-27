//
//  ProductionView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 25/12/2021.
//

import UIKit

class ProductionView: UIView {
    
    let imageBannerView1: ImageBannerView = {
        let view = ImageBannerView(images: ["img1", "img2", "img3", "img4"], reverse: false, duration: 100)
        view.anchor(heightConstant: 137)
        return view
    }()
    
    let imageBannerView2: ImageBannerView = {
        let view = ImageBannerView(images: ["img5", "img6", "img7", "img8"], reverse: true, duration: 80)
        view.anchor(heightConstant: 137)
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
        vstak.addArrangedSubview(imageBannerView1)
        vstak.addArrangedSubview(imageBannerView2)
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
