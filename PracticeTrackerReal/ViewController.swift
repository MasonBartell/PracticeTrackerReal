//
//  ViewController.swift
//  PracticeTrackerReal
//
//  Created by Mason  Bartell on 4/17/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        hoursLabel.text = "\(AppData.x)"
    }
}

