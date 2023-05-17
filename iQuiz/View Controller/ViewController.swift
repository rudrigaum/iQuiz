//
//  ViewController.swift
//  iQuiz
//
//  Created by Rodrigo Cerqueira Reis on 29/04/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var buttonQuizStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }

    @IBAction func pressedButton(_ sender: Any) {
    
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        buttonQuizStart.layer.cornerRadius = 12.00
    }
    
}

