//
//  ViewController.swift
//  Hello World App
//
//  Created by Arshad Ali on 01/12/18.
//  Copyright © 2018 Arshad Ali. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
     var helloView: HelloView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloView = HelloView(frame: view.bounds)
        view.addSubview(helloView)
    }

}

