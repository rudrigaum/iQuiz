//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Rodrigo Cerqueira Reis on 14/05/23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?
    
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var percentualLabel: UILabel!
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    func configurarLayout() {
        botaoReiniciarQuiz.layer.cornerRadius = 12.0
    }
}
