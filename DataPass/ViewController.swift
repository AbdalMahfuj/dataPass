//
//  ViewController.swift
//  DataPass
//
//  Created by MANHA on 25/3/23.
//

import UIKit


class ViewController: UIViewController, sendMainController {
    
    @IBOutlet weak var textInput: UITextField!
    
    func dataSend(item: String) {
        dataLabel.text = item
    }

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
    @IBAction func sendForwardPressed(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let screen = storyBoard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        screen.text = textInput.text!
        screen.delegate = self
        screen.modalTransitionStyle = .crossDissolve
        present(screen, animated: true, completion: nil)
    }
    // test comment


}

