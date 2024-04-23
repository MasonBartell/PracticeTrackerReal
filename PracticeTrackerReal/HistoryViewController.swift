//
//  HistoryViewController.swift
//  PracticeTrackerReal
//
//  Created by Mason  Bartell on 4/18/24.
//

import UIKit

class AppData
{
    static var title = [String]()
    static var hours = [String]()
    static var date = [String]()
}


class HistoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var HistoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HistoryTableView.dataSource = self
        HistoryTableView.delegate = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = AppData.title[indexPath.row]
        cell.detailTextLabel?.text = AppData.date[indexPath.row]
        return cell
    }
    override func viewDidAppear(_ animated: Bool) {
        HistoryTableView.reloadData()
    }

}
