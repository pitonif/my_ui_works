//
//  ViewController.swift
//  UITableView
//
//  Created by Oleg on 14.02.2022.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    let identifier = "myCell"
    var myArray = ["1", "2", "3", "4"]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func editTable(_ sender: Any) {
        myTableView.isEditing = !myTableView.isEditing
    }
    
}


extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let number = myArray[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = number
        cell.contentConfiguration = content
        return cell
    }
    
    //deleted
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    
    //move rows
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = myArray[sourceIndexPath.row]
        myArray.remove(at: sourceIndexPath.row)
        myArray.insert(item, at: destinationIndexPath.row)
    }
}
 
