//
//  ProductionView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 25/12/2021.
//

import UIKit

class ProductionView: UIView {
    
    let subtitle: UILabel = {
        let label = UILabel()
        label.text = "Production View"
        label.textColor = .white
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        
        addSubview(subtitle)
        subtitle.anchor(centerX: centerXAnchor, centerY: centerYAnchor, widthConstant: 143, heightConstant: 90)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
