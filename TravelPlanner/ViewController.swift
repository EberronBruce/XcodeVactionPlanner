//
//  ViewController.swift
//  TravelPlanner
//
//  Created by Bruce Burgess on 3/6/16.
//  Copyright © 2016 Bruce Burgess. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    //Connect the picker view to code
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var mySwitch: UISwitch!
    
    let vacationOptions : [String] = ["Beach", "Mountains"]
    
    var selectedOption : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }

    
    //Sets the number of rows in the picker view
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.vacationOptions.count
    }
    //sets the columns
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    //Setting the text in the picker view
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.vacationOptions[row]
    }
    //Getting the selection from the picker view
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectedOption = self.vacationOptions[row]
    }


}

