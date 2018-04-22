//
//  SelectViewController.swift
//  cactus_HYEY
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate{
    @IBOutlet var cactusName: UIPickerView!
    @IBOutlet var cactusNameFild: UITextField!
    @IBOutlet var cactusImage: UIImageView!
    
    @IBOutlet var subView: UIView!
    let cactusArray: Array<String> = ["선인장1", "선인장2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        cactusImage.isHidden=true
        subView.isHidden=true
        
    }
    var cactusWhat: String!

    @IBAction func ShowImage(_ sender: UIButton) {
        
        let cactus: String = cactusArray[self.cactusName.selectedRow(inComponent: 0)]
        if(cactus == "선인장1"){
            cactusWhat="선인장1"
            cactusImage.isHighlighted=false
            
            cactusImage.isHidden=false
        }else if(cactus == "선인장2"){
            cactusWhat="선인장2"
            cactusImage.isHighlighted=true
            cactusImage.isHidden=false
        }
        subView.isHidden=false
    }
    @IBAction func reset(_ sender: UIButton) {
        subView.isHidden=true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cactusArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cactusArray[row]
    }
    
    //x표시 입력 시 키보드 사라지게 함.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMyCactus" {
            let destVC = segue.destination as! CactusViewController
            let ordered: String! = cactusNameFild.text
        
          
            destVC.info = ordered
            destVC.cactusWho=cactusWhat
        } }
  
    

    

}
