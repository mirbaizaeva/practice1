//
//  ThirdViewController.swift
//  practice
//
//  Created by Nurjamal Mirbaizaeva on 18/3/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var put: String?
    
    @IBOutlet weak var thirdEmail: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        if !(put?.isEmpty ?? true){
            thirdEmail.text = put ?? "empty"
        }else{
            thirdEmail.text = "empty"
        }
    }

}
