//
//  ViewController.swift
//  I hope this works
//
//  Created by Ian Hatlewick on 12/7/17.
//  Copyright © 2017 Ian Hatlewick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

   
    @IBOutlet weak var CityTextBox: UITextField!
    @IBOutlet weak var CityDataWheel: UIPickerView!
    
    
    var cities = ["Ankeny","Des Moines","Cedar Rapids","Ames","Waterloo","England"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let countrows: Int = cities.count
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let titleRow = cities[row]
        
        return titleRow
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.CityTextBox.text = cities[row]
        self.CityDataWheel.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.CityDataWheel.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

