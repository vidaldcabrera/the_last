//
//  main.swift
//  The Last
//
//  Created by Aluno 48 on 24/02/25.
//

import Foundation

print("Entre com o nome do personagem.")

var nome_personagem : String = readLine()!.uppercased()

while (nome_personagem == "PEDRO") || (nome_personagem == "MARINA") {
    print("Por favor, entre com outro nome")
    nome_personagem = readLine()!.uppercased()
}

print("Capítulo 1. A viagem.")
print("""
\tNuma sexta-feria ao entardecer, você e seus amigos estão indo acampar de carro. Sem perceber, entraram numa estrada perigosa e o sinal GPS começa falhar. Assustados, vocês tentam voltar ao caminho, mas acabam se perdendo. Ainda sem muita certeza de onde estão, seu GPS volta a funcionar e recalcula a rota. Depois de um tempo nesse ‘novo’ caminho, passa subitamente no meio da estrada o que parece ser um animal, correndo em direção ao local que vocês precisam seguir. Você freia o carro bruscamente e escutam galhos se quebrando, parece ser algo ou alguém muito grande, mas vocês não conseguem identificar o que é.
""")
print("""

    PEDRO: ‘Meu Deus! Que bizarro, o que é isso?’
    MARINA: ‘Para de ser medroso, é só um bichinho.’
    PEDRO: 'Bichinho? É quase um leão!'
    MARINA: 'Ah, como eu achei que ia dar certo acampar na natureza com alguém com medo até do barulho do vento? Só segue o caminho aí.'
    PEDRO: 'Não cara, é um barulho meio preocupante mesmo! Como a gente já está perto, podemos ir para o outro lado e acampar por lá mesmo. Né, \(nome_personagem)?
""")
print("""
    Pedro, assustado, sugere desviar da rota e seguir para um local mais silencioso. Já Marina prefere seguir a rota planejada.\n\tCabe a você, {inserir nome}, desempatar a decisão. O que você prefere?\n\t- Digite 1 para desviar da rota\n\t- Digite 2 para seguir o caminho planejado
""")

// Obtem decisao
var decisao = confere_input()

