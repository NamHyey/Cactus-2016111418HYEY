//
//  ViewController.swift
//  cactus_HYEY
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewHIdden: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewHIdden.isHidden=true
    }

   
    @IBAction func viewShow(_ sender: UIButton) {
        viewHIdden.isHidden=false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

