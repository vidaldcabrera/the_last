//
//  utils.swift
//  ep-interativo
//
//  Created by Aluno 45 on 27/02/25.
//

import Foundation
func cria_personagem() -> String {
    print("Entre com o nome do personagem.")

    var nome_personagem : String = readLine()!.uppercased()

    while (nome_personagem == "PEDRO") || (nome_personagem == "MARINA") {
        print("Por favor, entre com outro nome")
        nome_personagem = readLine()!.uppercased()
    }
    return nome_personagem
}

func confere_input() -> String {
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

