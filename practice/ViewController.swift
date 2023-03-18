//
//  ViewController.swift
//  practice
//
//  Created by Nurjamal Mirbaizaeva on 18/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var eye: UIButton!
    
    @IBOutlet weak var password: UITextField!
    
    var isHidden = true
    @IBAction func eyeButton(_ sender: Any) {
        if isHidden{
            eye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            password.isSecureTextEntry = false
        }else{
            eye.setImage(UIImage(systemName: "eye"), for: .normal)
            password.isSecureTextEntry = true
        }
        isHidden = !isHidden
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        if email.text?.isEmpty ?? true && password.text?.isEmpty ?? true{
            email.layer.borderWidth = 2
            email.layer.borderColor = UIColor.red.cgColor
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.red.cgColor
        }else if email.text?.isEmpty ?? true{
            email.layer.borderWidth = 2
            email.layer.borderColor = UIColor.red.cgColor
            password.layer.borderWidth = 0
        }else if password.text?.isEmpty ?? true{
            password.layer.borderWidth = 2
            password.layer.borderColor = UIColor.red.cgColor
            email.layer.borderWidth = 0
        }else{
            email.layer.borderWidth = 0
            password.layer.borderWidth = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

