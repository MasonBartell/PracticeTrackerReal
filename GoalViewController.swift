//
//  GoalViewController.swift
//  PracticeTrackerReal
//
//  Created by Mason  Bartell on 4/29/24.
//

import UIKit

public class Goals{
    
    var goal = ""
}

class GoalViewController: UIViewController {

    @IBOutlet weak var newGoalTextfield: UITextField!
    
    @IBOutlet weak var activeGoalLabel: UILabel!
    
    let defaults = UserDefaults.standard
    var goal = ""
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

       view.addGestureRecognizer(tap)
        goal = defaults.string(forKey: "TheName") ?? ""
       
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        var newGoal = newGoalTextfield.text
        defaults.setValue(newGoal, forKey: "theName")
        activeGoalLabel.text = newGoal
        _ = navigationController?.popToRootViewController(animated: true)
        
    }
    @objc func dismissKeyboard() {
       
        view.endEditing(true)
    }
}
