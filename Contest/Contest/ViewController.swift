//
//  ViewController.swift
//  Contest
//
//  Created by Calvin Cantin on 2019-01-30.
//  Copyright © 2019 Calvin Cantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func userTapEnterButton(_ sender: UIButton) {
        var email = emailTextField.text ?? ""
        if email.isEmpty
        {
            UIView.animate(withDuration: 0.2, animations: {
                var transform = CGAffineTransform(translationX: -10, y: 0)
                self.emailTextField.transform = transform
            }){(_) in
                self.emailTextField.transform = CGAffineTransform.identity
            }
        }
        else
        {
            performSegue(withIdentifier: "EmailSendSegue", sender: nil)
        }
    }
    

}

