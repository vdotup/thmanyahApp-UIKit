//
//  FooterView.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 26/12/2021.
//

import UIKit

class FooterView: UIView {
    
    let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "thmanyah-logo")
        return imageView
    }()
    
    let aboutButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("عن الشركة", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(aboutButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let handbookButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("الدستور", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(handbookButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let jobsButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("الوظائف", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(jobsButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let blogButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("المدونة", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(blogButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let mediaKitButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("مواد تساعد الإعلام", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(mediaKitButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let hstack1: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 20
        return stack
    }()
    
    let hstack2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 20
        return stack
    }()
    
    let visualIdentityButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("الهوية البصرية", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(visualIdentityButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let privacyPolicyButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("سياسة الخصوصية", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(privacyPolicyButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let contactButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("اتصل بنا", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(contactButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let faqButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .init(name: "IBMPlexSansArabic", size: 16)
        button.setTitle("أسئلة متكررة", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(faqButtonHandler), for: .touchDown)
        button.setTitleColor(.white, for: .highlighted)
        button.tintColor = .green
        return button
    }()
    
    let hstack3: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .equalSpacing
        return stack
    }()
    
    let linkedinButton: UIButton = {
        let button = UIButton()
        let symbol = UIImage(named: "linkedin")
        button.setImage(symbol, for: .normal)
        button.addTarget(self, action: #selector(linkedinButtonHandler), for: .touchDown)
        button.tintColor = .black
        button.anchor(widthConstant: 20, heightConstant: 20)
        return button
    }()
    
    let twitterButton: UIButton = {
        let button = UIButton()
        let symbol = UIImage(named: "twitter")
        button.setImage(symbol, for: .normal)
        button.addTarget(self, action: #selector(twitterButtonHandler), for: .touchDown)
        button.tintColor = .black
        button.anchor(widthConstant: 20, heightConstant: 20)
        return button
    }()
    
    let facebookButton: UIButton = {
        let button = UIButton()
        let symbol = UIImage(named: "facebook")
        button.setImage(symbol, for: .normal)
        button.addTarget(self, action: #selector(facebookButtonHandler), for: .touchDown)
        button.tintColor = .black
        button.anchor(widthConstant: 20, heightConstant: 20)
        return button
    }()
    
    let instagramButton: UIButton = {
        let button = UIButton()
        let symbol = UIImage(named: "instagram")
        button.setImage(symbol, for: .normal)
        button.addTarget(self, action: #selector(instagramButtonHandler), for: .touchDown)
        button.tintColor = .black
        button.anchor(widthConstant: 20, heightConstant: 20)
        return button
    }()
    
    let youtubeButton: UIButton = {
        let button = UIButton()
        let symbol = UIImage(named: "youtube")
        button.setImage(symbol, for: .normal)
        button.addTarget(self, action: #selector(youtubeButtonHandler), for: .touchDown)
        button.tintColor = .black
        button.anchor(widthConstant: 20, heightConstant: 20)
        return button
    }()
    
    let linksVstak: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 5
        return stack
    }()
    
    let vstak: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 35
        return stack
    }()
    
    let copyrightsLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: "IBMPlexSansArabic", size: 12)
        label.text = copyrights
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    @objc private func aboutButtonHandler() {
        UIApplication.shared.open(URL(string: Links.about.rawValue)!)
    }
    
    @objc private func handbookButtonHandler() {
        UIApplication.shared.open(URL(string: Links.handbook.rawValue)!)
    }
    
    @objc private func jobsButtonHandler() {
        UIApplication.shared.open(URL(string: Links.jobs.rawValue)!)
    }
    
    @objc private func blogButtonHandler() {
        UIApplication.shared.open(URL(string: Links.blog.rawValue)!)
    }
    
    @objc private func mediaKitButtonHandler() {
        UIApplication.shared.open(URL(string: Links.mediaKit.rawValue)!)
    }
    
    @objc private func visualIdentityButtonHandler() {
        UIApplication.shared.open(URL(string: Links.visualIdentity.rawValue)!)
    }
    
    @objc private func privacyPolicyButtonHandler() {
        UIApplication.shared.open(URL(string: Links.privacyPolicy.rawValue)!)
    }
    
    @objc private func contactButtonHandler() {
        UIApplication.shared.open(URL(string: Links.contact.rawValue)!)
    }
    
    @objc private func faqButtonHandler() {
        UIApplication.shared.open(URL(string: Links.faq.rawValue)!)
    }
    
    @objc private func linkedinButtonHandler() {
        UIApplication.shared.open(URL(string: Links.linkedIn.rawValue)!)
    }
    
    @objc private func twitterButtonHandler() {
        UIApplication.shared.open(URL(string: Links.twitter.rawValue)!)
    }
    
    @objc private func facebookButtonHandler() {
        UIApplication.shared.open(URL(string: Links.facebook.rawValue)!)
    }
    
    @objc private func instagramButtonHandler() {
        UIApplication.shared.open(URL(string: Links.instagram.rawValue)!)
    }
    
    @objc private func youtubeButtonHandler() {
        UIApplication.shared.open(URL(string: Links.youtube.rawValue)!)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(logoImage)
        logoImage.anchor(top: topAnchor,
                             leading: leadingAnchor,
                             trailing: trailingAnchor,
                             heightConstant: 70,
                             padding: .init(top: 100, left: 10, bottom: 0, right: 10))
        
        addSubview(vstak)
        vstak.addArrangedSubview(linksVstak)
        vstak.addArrangedSubview(hstack3)
        vstak.addArrangedSubview(copyrightsLabel)
        vstak.anchor(top: logoImage.bottomAnchor,
                     leading: leadingAnchor,
                     bottom: bottomAnchor,
                     trailing: trailingAnchor,
                     padding: .init(top: 50, left: 20, bottom: 100, right: 20))
        
        linksVstak.addArrangedSubview(hstack1)
        linksVstak.addArrangedSubview(hstack2)
        
        hstack1.addArrangedSubview(aboutButton)
        hstack1.addArrangedSubview(handbookButton)
        hstack1.addArrangedSubview(jobsButton)
        hstack1.addArrangedSubview(blogButton)
        hstack1.addArrangedSubview(mediaKitButton)
        
        hstack2.addArrangedSubview(visualIdentityButton)
        hstack2.addArrangedSubview(privacyPolicyButton)
        hstack2.addArrangedSubview(contactButton)
        hstack2.addArrangedSubview(faqButton)
        
        hstack3.addArrangedSubview(linkedinButton)
        hstack3.addArrangedSubview(twitterButton)
        hstack3.addArrangedSubview(facebookButton)
        hstack3.addArrangedSubview(instagramButton)
        hstack3.addArrangedSubview(youtubeButton)
        hstack3.anchor(width: vstak.widthAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
