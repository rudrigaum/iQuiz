//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Rodrigo Cerqueira Reis on 02/05/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertouResposta {
            pontuacao += 1
            print("O usuário acertou")
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        if numeroQuestao < questoes.count - 1{
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaTelaDesempenho()
        }
    }
    
    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "IrParaTelaDesempenho", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
    }
    

    func configurarLayout() {
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = .yellow
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
    }
    
}
