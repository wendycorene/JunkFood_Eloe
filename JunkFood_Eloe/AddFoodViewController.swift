//
//  AddFoodViewController.swift
//  JunkFood_Eloe
//
//  Created by Eloe,Wendy C on 3/7/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

class AddFoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var caloriesTF: UITextField!
    @IBAction func addBTN(_ sender: UIButton) {
        if Double(caloriesTF.text!) != nil{
            AppDelegate.myModel.addFoodItem(name: nameTF.text!, calories: Double(caloriesTF.text!)!)
        }
        
    }
    
    @IBAction func cancelBTN(_ sender: UIButton) {
        
    }
}
