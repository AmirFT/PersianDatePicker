//
//  ViewController.swift
//  Example
//
//  Created by Farhad on 11/21/17.
//  Copyright © 2017 Farhad. All rights reserved.
//
// Sample Code

import UIKit
import PersianDatePicker

class ViewController: UIViewController {

    @IBOutlet weak var persianDatePickerView: PersianDatePickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persianDatePickerView.onChange = {(year, month, day) in
            print("\(year)/\(month)/\(day)")
//            print("gregorian Date : \(self.persianDatePickerView.getGregorianDate()!)")
            print("persian Date : \(self.persianDatePickerView.getPersianDate())")
        }
        
    }
    @IBAction func didTapReset(_ sender: Any) {
        persianDatePickerView.gotoCurrentDate()
    }
    
    @IBAction func didTapNextDay(_ sender: Any) {
        self.persianDatePickerView.nextDay(by: self.persianDatePickerView.getPersianDate()!)
    }
    
    @IBAction func didTapBackDay(_ sender: Any) {
        self.persianDatePickerView.backDay(by: self.persianDatePickerView.getPersianDate()!)
    }
    
}

