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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var destinationLabel: UILabel!
    
    var destination : Destination = Destination()
    
    let vacationOptions : [String] = ["Beach", "Mountains"]
    
    var selectedOption : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.selectedOption = "Beach"
        self.destinationLabel.text = ""
        
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }

    //Where should I go button tapped
    @IBAction func whereTapped(sender: AnyObject) {
        if mySwitch.on {
            if self.selectedOption == "Beach" {
                self.destination.name  = "Thailand"
                self.destination.image = UIImage(named: "thailand.jpg")
            }
            if self.selectedOption == "Mountains" {
                self.destination.name = "Mount Everest"
                self.destination.image = UIImage(named: "everest.jpg")
            }
                
        } else {
            if self.selectedOption == "Beach" {
                self.destination.name  = "Miami"
                self.destination.image = UIImage(named: "miami.jpg")
            }
            if self.selectedOption == "Mountains" {
                self.destination.name = "Zion"
                self.destination.image = UIImage(named: "zion.jpg")
            }

        }
        
        self.imageView.image = self.destination.image
        self.destinationLabel.text = "Pack your bages to \(self.destination.name!)!"
        
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

