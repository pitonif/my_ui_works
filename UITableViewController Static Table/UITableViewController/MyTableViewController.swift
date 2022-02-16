//
//  MyTableViewController.swift
//  UITableViewController
//
//  Created by Oleg on 15.02.2022.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var genderSegmentControl: UISegmentedControl!
    @IBOutlet weak var isPushSwitch: UISwitch!
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        save()

    }


    @IBAction func saveButton(_ sender: Any) {
        userDefaults.setValue(nameTextField.text, forKey: "name")
        userDefaults.setValue(lastNameTextField.text, forKey: "lastName")
        userDefaults.set(isPushSwitch.isOn, forKey: "switch")
        userDefaults.set(genderSegmentControl.selectedSegmentIndex, forKey: "segment")
        print("save")
        lastNameTextField.resignFirstResponder()
    }
    //MARK: - Methods
    func save() {
        if let name = userDefaults.object(forKey: "name") {
            nameTextField.text = name as? String
        }
        
        if let last = userDefaults.object(forKey: "lastName") {
            lastNameTextField.text = last as? String
        }
        
        if let isSwitch = userDefaults.object(forKey: "switch") {
            isPushSwitch.isOn = isSwitch as! Bool
        }
        
        if let gender = userDefaults.object(forKey: "segment") {
            genderSegmentControl.selectedSegmentIndex = gender as! Int
        }
    }
}
