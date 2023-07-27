//
//  ViewController.swift
//  test
//
//  Created by Ethan CHIANG on 2023/5/22.
//
import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    //宣告task物件
    var task:[TaskMO]=[]
    
    //幫文字輸入框元件建立個變數
    @IBOutlet weak var nameTextField: UITextField!
 
    //兩個表格視圖相關的協定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
    Int {
        //負責回傳區塊（section）中的列數
        return task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = task[indexPath.row].name
        return cell
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}


