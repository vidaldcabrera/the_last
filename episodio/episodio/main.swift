//
//  main.swift
//  The Last
//
//  Created by Aluno 48 on 24/02/25.
//

import Foundation

let nome_personagem = cria_personagem()
imprime_cap1(nome: nome_personagem)

// Obtem decisao 
var decisao = confere_input()
capitulo_2(nome: nome_personagem, escolha: decisao)
