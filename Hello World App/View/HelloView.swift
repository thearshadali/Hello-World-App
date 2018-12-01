//
//  HelloView.swift
//  Hello World App
//
//  Created by Arshad Ali on 01/12/18.
//  Copyright © 2018 Arshad Ali. All rights reserved.
//

import UIKit

class HelloView: UIView {

    var label: UILabel!
    var button: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createLabel()
        createButton()
        addConstrains()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("Failde to load view")
    }
    
    func createLabel(){
        label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        addSubview(label)
    }
    
    func createButton(){
        button = UIButton(frame: CGRect.zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap Here!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        addSubview(button)
    }
    
    @objc func buttonAction(){
        label.text = "Hello"
    }
    
    func addConstrains(){
       NSLayoutConstraint.activate([label.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
                                    label.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
                                    label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
                                    label.heightAnchor.constraint(equalToConstant: 50)])
        
        NSLayoutConstraint.activate([button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     button.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                                     button.widthAnchor.constraint(equalToConstant: 100),
                                     button.heightAnchor.constraint(equalToConstant: 30)])
    }
}

