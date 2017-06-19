//
//  ViewController.swift
//  BasicTableViewHomework
//
//  Created by Brent Fordham on 6/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var taskList = [Task]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)
        let task = taskList[indexPath.row]
        
        cell.textLabel?.text = task.title
        
        return cell
    }
    
    override func loadView() {
        super.loadView()
    
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

