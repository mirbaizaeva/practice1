//
//  SeconViewController.swift
//  practice
//
//  Created by Nurjamal Mirbaizaeva on 18/3/23.
//

import UIKit

class SeconViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var seconEmail: UITextField!
    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var secondPassword: UITextField!
    
    @IBOutlet weak var secondEye: UIButton!
    
    var isHid = true
    @IBAction func eye(_ sender: Any) {
        if isHid{
            secondEye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            secondPassword.isSecureTextEntry = false
        }else{
            secondEye.setImage(UIImage(systemName: "eye"), for: .normal)
            secondPassword.isSecureTextEntry = true
        }
        isHid = !isHid
    }
    
    @IBAction func secondLogin(_ sender: Any) {
        if username.text?.isEmpty ?? true && seconEmail.text?.isEmpty ?? true && number.text?.isEmpty ?? true && secondPassword.text?.isEmpty ?? true{
            seconEmail.layer.borderWidth = 2
            seconEmail.layer.borderColor = UIColor.red.cgColor
            username.layer.borderWidth = 2
            username.layer.borderColor = UIColor.red.cgColor
            number.layer.borderWidth = 2
            number.layer.borderColor = UIColor.red.cgColor
            secondPassword.layer.borderWidth = 2
            secondPassword.layer.borderColor = UIColor.red.cgColor
        }else if username.text?.isEmpty ?? true{
            username.layer.borderWidth = 2
            username.layer.borderColor = UIColor.red.cgColor
            seconEmail.layer.borderWidth = 0
            number.layer.borderWidth = 0
            secondPassword.layer.borderWidth = 0
        }else if seconEmail.text?.isEmpty ?? true{
            seconEmail.layer.borderWidth = 2
            seconEmail.layer.borderColor = UIColor.red.cgColor
            username.layer.borderWidth = 0
            number.layer.borderWidth = 0
            secondPassword.layer.borderWidth = 0
        }else if number.text?.isEmpty ?? true{
            number.layer.borderWidth = 2
            number.layer.borderColor = UIColor.red.cgColor
            username.layer.borderWidth = 0
            seconEmail.layer.borderWidth = 0
            secondPassword.layer.borderWidth = 0
        }else if secondPassword.text?.isEmpty ?? true{
            secondPassword.layer.borderWidth = 2
            secondPassword.layer.borderColor = UIColor.red.cgColor
            username.layer.borderWidth = 0
            number.layer.borderWidth = 0
            seconEmail.layer.borderWidth = 0
        }else{
            seconEmail.layer.borderWidth = 0
            username.layer.borderWidth = 0
            number.layer.borderWidth = 0
            seconEmail.layer.borderWidth = 0
            var vc: ThirdViewController = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            vc.put = seconEmail.text ?? "empty"
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
