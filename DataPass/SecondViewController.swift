//
//  SecondViewController.swift
//  DataPass
//
//  Created by MANHA on 25/3/23.
//

import UIKit

protocol sendMainController {
    func dataSend(item: String)
}

class SecondViewController: UIViewController{
    
    var text : String?
    @IBOutlet weak var msgLabel: UILabel!
    var delegate: sendMainController?
    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if text != nil {
            msgLabel.text = text
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendBackPressed(_ sender: Any) {
        delegate?.dataSend(item: userTextField.text!)
        self.navigationController?.popViewController(animated: true)

    }
}
