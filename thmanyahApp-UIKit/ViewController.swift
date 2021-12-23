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
        return view
    }()
    
    let landingView: UIView = {
        let view = LandingView(frame: .zero)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.anchor(top: view.topAnchor,
                           leading: view.leadingAnchor,
                           bottom: view.bottomAnchor,
                           trailing: view.trailingAnchor
        )
        
        scrollView.addSubview(landingView)
        landingView.anchor(top: scrollView.topAnchor,
                           leading: view.leadingAnchor,
                           trailing: view.trailingAnchor
        )
    }


}

