//
//  CactusViewController.swift
//  cactus_HYEY
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CactusViewController: UIViewController {
    @IBOutlet var levelup: UIProgressView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var CactusView: UIImageView!
     var info: String?
    var cactusWho: String?
    var count: Int=0
    @IBOutlet var Cactus2: UIImageView!
    @IBOutlet var restartView: UIView!
    @IBAction func Sun(_ sender: UIButton) {
       
        self.levelup.progress+=0.1
        count+=1
        if(count==10){
            
            if(cactusWho=="선인장1"){
                self.CactusView.isHighlighted=true
                restartView.isHidden=false
            }else if(cactusWho=="선인장2"){
                
                self.CactusView.isHidden=true
                self.Cactus2.isHidden=false
                restartView.isHidden=false
            }
            
           
        }
        
        

    }
    
    
    

    @IBAction func Rain(_ sender: UIButton) {
            self.levelup.progress+=0.1
        count+=1
        if(count==10){
            
            if(cactusWho=="선인장1"){
                self.CactusView.isHighlighted=true
                
            }else if(cactusWho=="선인장2"){
                
                self.CactusView.isHidden=true
                self.Cactus2.isHidden=false
            }
        }
        
    }
    override func viewDidLoad() {
        count=0
        super.viewDidLoad()
        Cactus2.isHidden=true
        if let contentString = info{
            nameLabel.text=contentString
            
        }
        
        restartView.isHidden=true

        // Do any additional setup after loading the view.
    }

  

}
