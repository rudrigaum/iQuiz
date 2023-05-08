//
//  Questao.swift
//  iQuiz
//
//  Created by Rodrigo Cerqueira Reis on 08/05/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual o feitiço para desarmar o oponente, em Harry Potter?", respostas: ["Expetro Patronum", "Avada Redrava", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Qual o feitiço para desarmar o oponente, em Harry Potter?", respostas: ["Expetro Patronum", "Avada Redrava", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Qual o feitiço para desarmar o oponente, em Harry Potter?", respostas: ["Expetro Patronum", "Avada Redrava", "Expelliarmus"], respostaCorreta: 2)
]
