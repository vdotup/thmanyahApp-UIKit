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
        return view
    }()
    
    let vstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.backgroundColor = .brown
        return stack
    }()
    
    let landingView: UIView = {
        let view = LandingView()
        view.anchor(heightConstant: 500)
        view.backgroundColor = .magenta
        return view
    }()
    
    let landingView2: UIView = {
        let view = LandingView()
        view.anchor(heightConstant: 200)
        view.backgroundColor = .green
        return view
    }()
    
    let landingView3: UIView = {
        let view = LandingView()
        view.anchor(heightConstant: 1200)
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(vstack)
        vstack.addArrangedSubview(landingView)
        vstack.addArrangedSubview(landingView2)
        vstack.addArrangedSubview(landingView3)
        
        scrollView.anchor(top: view.topAnchor,
                          leading: view.leadingAnchor,
                          bottom: view.bottomAnchor,
                          trailing: view.trailingAnchor
        )
        
        vstack.anchor(top: scrollView.topAnchor,
                      leading: scrollView.leadingAnchor,
                      bottom: scrollView.bottomAnchor,
                      trailing: scrollView.trailingAnchor,
                      width: scrollView.widthAnchor
        )
    }
    
    
}

