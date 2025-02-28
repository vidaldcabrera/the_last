import Foundation

func imprime_cap1(nome:String) {
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
}

func capitulo_3_desvia(nome:String, decisao:String) {
    // Caverna. O personagem pode entrar na caverna ruim ou voltar pro farol com desfecho bom
    if decisao == "1" {
        caverna_rota_desviada()
    }
    // Farol. A história termina com o desfecho bom
    else {
        farol_bom()
    }
}

func capitulo_3_segue(nome:String, decisao:String) {
    // Caverna
    if decisao == "1" {
        caverna_manteve_rota()
    } // Farol
    else {
        farol_ruim()
    }
}

func farol_bom() {
    print("""
        Pedro, assustado, sugere desviar da rota e seguir para um local mais silencioso. Já Marina prefere seguir a rota planejada.\n\tCabe a você, \(nome_personagem), desempatar a decisão. O que você prefere?\n\t- Digite 1 para desviar da rota\n\t- Digite 2 para seguir o caminho planejado
    """)
}
