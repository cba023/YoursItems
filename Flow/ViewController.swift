//
//  ViewController.swift
//  Flow
//
//  Created by flowerflower on 2019/3/8.
//  Copyright © 2019 FanQu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func btnStartClick(_ sender: Any) {
        let vc = DemoViewController()
        vc.title = "MENU"
        navigationController?.pushViewController(vc, animated: true)
    }
}

