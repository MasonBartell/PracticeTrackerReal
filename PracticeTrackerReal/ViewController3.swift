//
//  ViewController3.swift
//  PracticeTrackerReal
//
//  Created by Mason  Bartell on 4/22/24.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var DrillsText: UITextField!
    
    @IBOutlet weak var goalText: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var dateText: UITextField!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateFormat = "MM/dd/yyyy"
    dateText.inputView = datePicker
        datePicker.datePickerMode = .date
    dateText.text = dateFormatter.string(from: datePicker.date)
   
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            view.addGestureRecognizer(tap)
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        let dText = DrillsText.text!
        let gText = (Int)(goalText.text!)
        let dateT = dateText.text!
        AppData.title.append(dText)
        AppData.hours.append(gText ?? 0)
        AppData.date.append(dateT)
        print("\(dText),\(gText),\(dateT)")
        AppData.x = AppData.x + ((Int)(goalText.text!) ?? 0)
        _ = navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
              
            dateText.text = dateFormatter.string(from: sender.date)
            view.endEditing(true)
        }
    @objc func dismissKeyboard() {
       
        view.endEditing(true)
    }
    
}
