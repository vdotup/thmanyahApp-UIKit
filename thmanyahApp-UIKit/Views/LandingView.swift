//
//  LandingView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 23/12/2021.
//

import UIKit

class LandingView: UIView {
    
    let logo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "thmanyah-logo")
        return imageView
    }()
    
    let subtitle: UILabel = {
        let label = UILabel()
        label.text = landing_subtitle
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //backgroundColor = .bone
        
        addSubview(logo)
        logo.anchor(centerX: centerXAnchor, centerY: centerYAnchor, widthConstant: 143, heightConstant: 90)
        
        addSubview(subtitle)
        subtitle.anchor(top: logo.bottomAnchor, centerX: centerXAnchor, widthConstant: 143, heightConstant: 90)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
