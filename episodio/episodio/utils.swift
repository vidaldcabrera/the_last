//
//  utils.swift
//  ep-interativo
//
//  Created by Aluno 45 on 27/02/25. - oi
//

import Foundation
import Prism
func cria_personagem() -> String {
    /*
     Obtem o nome do personagem
     */
    print("Entre com o nome do personagem.")

    var nome_personagem : String = readLine()!.uppercased()

    while (nome_personagem == "PEDRO") || (nome_personagem == "MARINA") {
        print("Por favor, entre com outro nome")
        nome_personagem = readLine()!.uppercased()
    }
    return nome_personagem
}

func confere_input() -> String {
    /*
     Recebe o input com a decisao tomada
     Analisa se o input é ou o valor 1 ou 2
     Se não for um input válido, ele pede para o usuário digitar novamente
     */
    var input_valido: Bool
    var decisao:String!
    decisao = readLine()
    repeat {
        input_valido = true
        if decisao != "1" && decisao != "2" {
            input_valido = false
            print("Inválido! Por favor, insira o valor 1 ou 2.")
            decisao = readLine()
        } else {
            input_valido = true
        }
        
    } while(input_valido == false)
    return decisao
}
