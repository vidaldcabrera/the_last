import Foundation

func imprime_cap1(nome:String) {
    print("Capítulo 1. A viagem.")
    print("""
    \tNuma sexta-feria ao entardecer, você e seus amigos estão indo acampar de carro. Sem perceber, entraram numa estrada perigosa e o sinal GPS começa falhar. Assustados, vocês tentam voltar ao caminho, mas acabam se perdendo. Ainda sem muita certeza de onde estão, seu GPS volta a funcionar e recalcula a rota. Depois de um tempo nesse ‘novo’ caminho, passa subitamente no meio da estrada o que parece ser um animal, correndo em direção ao local que vocês precisam seguir. Você freia o carro bruscamente e escutam galhos se quebrando, parece ser algo ou alguém muito grande, mas vocês não conseguem identificar o que é.
        PEDRO: ‘Meu Deus! Que bizarro, o que é isso?’
        MARINA: ‘Para de ser medroso, é só um bichinho.’
        PEDRO: 'Bichinho? É quase um leão!'
        MARINA: 'Ah, como eu achei que ia dar certo acampar na natureza com alguém com medo até do barulho do vento? Só segue o caminho aí.'
        PEDRO: 'Não cara, é um barulho meio preocupante mesmo! Como a gente já está perto, podemos ir para o outro lado e acampar por lá mesmo. Né, \(nome)?
        Pedro, assustado, sugere desviar da rota e seguir para um local mais silencioso. Já Marina prefere seguir a rota planejada.\n\tCabe a você, \(nome), desempatar a decisão. O que você prefere?\n\t\t- Digite 1 para desviar da rota\n\t\t- Digite 2 para seguir o caminho planejado
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
        
    } // Farol
    else {
        
    }
}

func farol_bom() {
    print("""
    \tVocê chega ao farol, o caminho não foi muito complicado, mas já estava muito frio e você tinha pouca visibilidade. Tenta entrar pela porta mas está trancada. Decide subir a escada, que tem uma aparência bastante velha. Você passa a mão pelos degraus e percebe que são feitos de madeira, e não tinha nenhum corrimão. Você sobe a escada, já está mais alto que as árvores ao redor. Conforme você sobe, sente cheiro de mofo - alguns degraus estão apodrecendo, um passo errado e você pode despencar dali - a queda definitivamente causaria uma morte, ou minimamente te impediria de se mover até que alguém o encontrasse… se alguém o encontrasse…
        Você escuta os rangidos dos degraus, mas finalmente consegue chegar ao topo. Está muito frio, você está tremendo e corre risco de uma hipotermia se continuar do lado de fora. Você não consegue enxergar muito bem, mas parece escutar alguém ali dentro. Pela janela você vê o vulto de alguém que parece ser um funcionário. Talvez seja um guarda. Você pode bater na janela para pedir para ele abrir a porta para você, ou pode descer e ir para a caverna vista anteriormente. O que você faz?
              - Digite 1 para bater na janela
              - Digite 2 para tentar ir para a caverna vista anteriormente
""")
    let escolha = confere_input()
    if escolha == "1" {
        desfecho_bom()
    } else {
        caverna_rota_desviada()
    }
}

// Desfecho bom da história
func desfecho_bom() {
    print("""
    \tAo bater na janela, um homem que está ali dentro olha para você, um pouco confuso. Você grita por ajuda e, então, ele abre a porta para você. Você explica toda a situação para ele, e ele lhe diz que já viu situações como essas antes, aquela floresta claramente escondia muitos mistérios. Ele acionou a polícia e outros dos guardas, por um rádio um pouco antigo, e organizou uma busca por toda a floresta.
        Durante a madrugada, uma grande equipe adentrou a floresta a procura de Pedro e Marina. Helicópteros sobrevoavam pelas árvores, ajudando a iluminar a floresta escura. Depois de algumas horas, o guarda voltou para o farol, acompanhado dos seus dois amigos perdidos. Você sente um grande alívio, e os abraça. Eles estão muito desnorteados, sem memórias do que tinha acontecido nessas últimas horas. Por fim, vocês se abrigam no farol até o amanhecer, e retornam em segurança para suas casas, com ajuda dos guardas.
""")
}

// Caverna com outros finais
func caverna_rota_desviada() {
    print("""
    \tChegando próximo a caverna, você começa a buscar por algum sinal de seus amigos, e vê algumas pegadas no lama no chão. São pegadas de pessoas e outras maiores, que você não consegue identificar do que seria. Está frio e escuro, a floresta parece mais silenciosa que o normal. Não ha sons de animais próximos, e a única fonte de luz vem de dentro da caverna. Enquanto você corre até ela, encontra a blusa de marina no chão. ela nunca a perderia. Você se apressa para poder se abrigar e assim procura-los antes que algo pior aconteça. Na entrada da caverna, a luz se intensifica, sem ficar muito claro de onde ela vem. Com um certo receio, você repensa adentra-la.
    \tVocê entra na caverna e ainda não encontra ninguém. As paredes apresentam padrões estranhos, definitivamente desenhados por alguém. A caverna é mais profunda do que parecia, e você continua a explora-la. Ha roupas e vestígios de que alguém esteve por la, mas ainda nada de seus amigos. Entre os pertences, você identifica o boné do Pedro. As roupas que encontrou estavam estranhamente jogadas. Ao ver de perto percebe que estavam rasgadas, sujas. Você se abaixa e vê que entre elas, estavam as roupas de seus amigos também. Algo parece obstruir a luz que iluminava a caverna. Uma sombra rapidamente aumenta sobre você, e o mesmo barulho do animal ouvido por vocês na estrada é o ultimo que você escuta antes que suas garras te alcancem.
""")
}

// Caverna caso mantenha rota
func caverna_manteve_rota(){
    print("""
        \tChegando próximo a caverna, você começa a buscar por algum sinal de seus amigos, e vê algumas pegadas no lama no chão. São pegadas de pessoas e outras maiores, que você não consegue identificar do que seria. Está frio e escuro, a floresta parece mais silenciosa que o normal. Não ha sons de animais próximos, e a única fonte de luz vem de dentro da caverna. Enquanto você corre até ela, encontra a blusa de marina no chão. ela nunca a perderia. Você se apressa para poder se abrigar e assim procura-los antes que algo pior aconteça. Na entrada da caverna, a luz se intensifica, sem ficar muito claro de onde ela vem. Com um certo receio, você repensa adentra-la, ou ir ate o farol buscar ajuda, já que não escuta a voz ou a presença de ninguém.
        - Digite 1 para seguir e entrar na caverna
        - Digite 2 para voltar e ir até o farol
    """)
    let escolha = confere_input()
    if escolha == "1" {
        caverna_rota_desviada()
    } else {
        farol_ruim()
    }
}

// Farol com final ruim
func farol_ruim() {
    print("""
    \tVocê chega ao farol, o caminho não foi muito complicado, mas já estava muito frio e você tinha pouca visibilidade. Tenta entrar pela porta mas está trancada. Decide subir a escada, que tem uma aparência bastante velha. Você passa a mão pelos degraus e percebe que são feitos de madeira, e não tinha nenhum corrimão. Você sobe a escada, já está mais alto que as árvores ao redor. Conforme você sobe, sente cheiro de mofo - alguns degraus estão apodrecendo, um passo errado e você pode despencar dali - a queda definitivamente causaria uma morte, ou minimamente te impediria de se mover até que alguém o encontrasse… se alguém o encontrasse…
        Você escuta os rangidos dos degraus, mas finalmente consegue chegar ao topo. Está muito frio, você está tremendo e corre risco de uma hipotermia se continuar do lado de fora. A única forma de adentrar o farol é quebrando a janela com uma barra de metal que está ali no chão.
        Você quebra a janela e consegue entrar. O lugar parece abandonado: você vê muita bagunça, alguns cacos de vidro quebrado no chão, as paredes estão arranhadas, como se um animal muito grande tivesse passado por ali, de alguma forma. É tudo muito antigo e aparentemente de pouca relevância. Há algumas revistas de muitos anos atrás, livros, objetos pessoais que indicavam que alguém morou ali por um tempo, mas há décadas atrás. Perto dessas revistas, tem um livro, que parece ser um diário, a única coisa mais recente e não completamente coberta por pó. Você decide abrir o diário ou não?
            - Digite 1 para abrir o diário
            - Digite 2 para não abrir
        
""")
    let escolha = confere_input()
    if escolha == "1" {
        abrir_diario()
    } else {
        nao_abrir()
    }
    
}

// Caso abra o diário
func abrir_diario() {
    print("""
    \tVoce abre o diário, que, apesar de um pouco antigo, parece bem mais atual que o restante dos pertences no farol. Nele, há várias paginas de uma pessoa descrevendo seus dias sobrevivendo nessa parte da floresta sozinha após se perder, muito parecido com a sua situação. Inicialmente parece muito útil, mas as anotações passam a ficar meio estranhas e perdendo o sentido. Entre essas paginas desconexas, um texto em específico chama sua atenção:
        “Não há mais escapatória. Eu lutei contra a verdade todo esse tempo, mas não ha mais nada a ser feito. Espero que isso não seja encontrado por ninguém, mas se você esta lendo isso, sinto muito. Há mistérios demais nessa floresta, e o fenômeno que me prendeu aqui nunca ficou claro, mas não me resta nada a ser feito. todos os lugares dessa floresta parecem muito similares, não? Mesmas arvores. Mesmos animais. O rio que nunca tem fim. A caverna que, não importa a onde esteja, sempre chega até ela. Se conseguiu escapar da criatura que habita aquele lugar e chegar até aqui, parabéns. Mas talvez aquele fosse um destino menos cruel. Passar o resto de sua existência preso nesse loop enquanto a floresta te consome é o pior que poderia ter me acontecido.”
""")
}

// Caso não abra o diário
func nao_abrir() {
    print("""
    \tVocê opta, com medo, a não abrir o diário. De repente a floresta fica completamente silenciosa, não é possível escutar absolutamente nada, nem mesmo o barulho do vento que estava tão forte. Você olha pela janela do farol mas tudo está muito escuro lá fora. Então, você se vira de costas para a janela. Algo parece obstruir a lâmpada que iluminava o farol. Uma sombra rapidamente aumenta sobre você, e o mesmo barulho do animal ouvido por vocês na estrada é o ultimo que você escuta antes que suas garras te alcancem.
""")
}
