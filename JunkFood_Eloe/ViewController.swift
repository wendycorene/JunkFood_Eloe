//
//  ViewController.swift
//  JunkFood_Eloe
//
//  Created by Eloe,Wendy C on 3/6/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationBarDelegate {

    override func viewDidLoad() {
        reportTXT.text = AppDelegate.myModel.combinedReport()
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordBTN(_ sender: UIButton) {
        
    }
    
    @IBAction func resetBTN(_ sender: UIButton) {
        AppDelegate.myModel.reset()
    }
    
    @IBOutlet weak var reportTXT: UITextView!
    
}

