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
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var pickerView2: UIPickerView!
    
    
    
    var cities = ["Ankeny","Des Moines","Cedar Rapids","Ames","Waterloo","England"]
    
    var test = ["one","two","three"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
   /* func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        var countrows : Int = cities.count
        if pickerView == pickerView2 {
            countrows = self.test.count
        }
        return countrows
    } */
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = cities.count
        if pickerView == pickerView2 {
            countrows = self.test.count
        }
        return countrows
    }
    
   
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == CityDataWheel {
            let titleRow = cities[row]
            
            return titleRow
        }
        else if pickerView == pickerView2{
            let titleRow = test[row]
            
            return titleRow
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //self.CityTextBox.text = cities[row]
        //self.CityDataWheel.isHidden = true
        
        if pickerView == CityDataWheel {
            self.CityTextBox.text = self.cities[row]
           // self.CityDataWheel.isHidden = true
        }
        
        else if pickerView == pickerView2 {
            self.textField2.text = self.test[row]
            //self.pickerView2.isHidden = true
        }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == self.CityTextBox){
            self.CityDataWheel.isHidden = false
        }
        else if (textField == self.textField2   ){
            self.pickerView2.isHidden = false
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == self.CityTextBox){
            self.CityDataWheel.isHidden =  true
        }
        else if (textField == self.textField2   ){
            self.pickerView2.isHidden = true
        }
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

