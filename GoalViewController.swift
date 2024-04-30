//
//  GoalViewController.swift
//  PracticeTrackerReal
//
//  Created by Mason  Bartell on 4/29/24.
//

import UIKit

class GoalViewController: UIViewController {

    @IBOutlet weak var newGoalTextfield: UITextField!
    
    @IBOutlet weak var activeGoalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        var newGoal = newGoalTextfield.text
        activeGoalLabel.text = newGoal
        
        
    }
    
}
