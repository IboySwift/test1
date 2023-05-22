//
//  ViewController.swift
//  test
//
//  Created by Ethan CHIANG on 2023/5/22.
//
import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var task=["nap","lunch","coding"]
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
    Int {
        //負責回傳區塊（section）中的列數
        return task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = task[indexPath.row]
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}


