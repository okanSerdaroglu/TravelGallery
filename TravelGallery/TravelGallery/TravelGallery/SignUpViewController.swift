//
//  SignUpViewController.swift
//  TravelGallery
//
//  Created by Okan Serdaroğlu on 11.07.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var labelPassword: UITextField!
    
    @IBOutlet weak var labelEmail: UITextField!
    
    @IBOutlet weak var labelPasswordAgain: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonConfirmClicked(_ sender: Any) {
    }
}
