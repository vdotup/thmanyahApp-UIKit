//
//  ViewController.swift
//  thmanyahApp-UIKit
//
//  Created by Abdurrahman Alfudeghi on 22/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .white
        view.contentInsetAdjustmentBehavior = .never
        return view
    }()
    
    let container: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    let vstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 0
        stack.backgroundColor = .white
        return stack
    }()
    
    let landingView: UIView = {
        let view = LandingView()
        return view
    }()
    
    let statsView: UIView = {
        let view = StatsView()
        return view
    }()
    
    let productionView: UIView = {
        let view = ProductionView()
        return view
    }()
    
    let partnersView: UIView = {
        let view = PartnersView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(container)
        container.addSubview(vstack)
        vstack.addArrangedSubview(landingView)
        vstack.addArrangedSubview(statsView)
        vstack.addArrangedSubview(productionView)
        vstack.addArrangedSubview(partnersView)
        
        scrollView.anchor(top: view.topAnchor,
                          leading: view.leadingAnchor,
                          bottom: view.bottomAnchor,
                          trailing: view.trailingAnchor
        )
        
        container.anchor(top: scrollView.topAnchor,
                          leading: scrollView.leadingAnchor,
                          bottom: scrollView.bottomAnchor,
                          trailing: scrollView.trailingAnchor,
                         width: scrollView.widthAnchor
        )
        scrollView.contentInsetAdjustmentBehavior = .never
        vstack.anchor(top: scrollView.topAnchor,
                      leading: scrollView.leadingAnchor,
                      bottom: scrollView.bottomAnchor,
                      trailing: scrollView.trailingAnchor,
                      width: scrollView.widthAnchor
        )
    }
    
    
}

