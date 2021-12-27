//
//  ImageBannerView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 27/12/2021.
//

import UIKit

class ImageBannerView: UIView {
    
    let hstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 15
        return stack
    }()
    
    var images: [String]
    var reverse: Bool
    var duration: CGFloat

    init(images: [String], reverse: Bool, duration: CGFloat) {
        self.images = []
        self.images.append(contentsOf: images)
        self.images.append(contentsOf: images)
        self.reverse = reverse
        self.duration = duration
        
        super.init(frame: .zero)
        
        addSubview(hstack)
        hstack.anchor(top: topAnchor,
                     bottom: bottomAnchor,
                      centerX: centerXAnchor
        )
        UIView.animate(withDuration: duration, delay: 0, options: [.repeat, .curveLinear], animations: {
            self.hstack.frame.origin.x = self.reverse ? 800 : -800
        }, completion: nil)
        
        for image in self.images {
            let imageView = UIImageView()
            imageView.image = UIImage(named: image)
            imageView.contentMode = .scaleAspectFill
            imageView.layer.masksToBounds = true
            imageView.layer.cornerRadius = 12
            imageView.anchor(widthConstant: 244, heightConstant: 137)
            hstack.addArrangedSubview(imageView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
