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
        PEDRO: 'Não cara, é um barulho meio preocupante mesmo! Como a gente já está perto, podemos ir para o outro lado e acampar por lá mesmo. Né, \(nome)?
    """)
    print("""
        Pedro, assustado, sugere desviar da rota e seguir para um local mais silencioso. Já Marina prefere seguir a rota planejada.\n\tCabe a você, \(nome), desempatar a decisão. O que você prefere?\n\t\t- Digite 1 para desviar da rota\n\t\t- Digite 2 para seguir o caminho planejado
    """)
}

func capitulo_2(nome:String, escolha:String) {
    if escolha == "1" {
        // opcao escolhida: desviar a rota
        desvia_rota(nome: nome)
        escolha_rota_desviada(nome: nome)
    } else {
        mantem_rota(nome:nome)
    }
    
}

func desvia_rota(nome:String) {
    print("""
        Vocês seguem para o caminho oposto ao barulho. Por fim, você e seus amigos chegam em um local silencioso. Está um belo por do sol adiante, vocês estão rodeados por árvores e um extenso rio está próximo, mas não conseguem ver muito mais que isso. Parecem estar completamente sozinhos.
            Você e Marina instalam as barracas antes do sol se por completamente, enquanto Pedro vai lavar o rosto no rio para relaxar depois desse trajeto tortuoso. Passam-se uns 10 minutos, e nada do Pedro.
            VOCÊ: “Cadê o Pedro? Não consigo vê-lo e ele ainda não voltou…”
            MARINA: “Não sei, vamos esperar que logo ele volta. Vamos acendendo uma fogueira enquanto isso, está começando a esfriar.”
            Você concorda, mas continua ansioso com a demora do Pedro. Passam-se mais uns 30 minutos e nada dele.
            MARINA: “Estou achando que o Pedro se perdeu, ele é muito atrapalhado, não faz nada direito. Vou procurar ele enquanto ainda não escureceu totalmente. Fica aqui cuidando das coisas, ok?”
            VOCÊ: “Beleza”
    
        Depois de uns 15 minutos, o sol já se pôs totalmente, a única iluminação que resta é a da Lua cheia e do fogo que você e Marina acenderam. Nenhum de seus amigos voltaram ainda e você começa a questionar se eles estão bem. Será melhor continuar vigiando o local caso eles apareçam, ou ir em busca deles?\n\t\t- Digite 1 para ficar parado\n\t\t- Digite 2 para procurar seus amigos
""")
}

func escolha_rota_desviada(nome:String) {
    /*
     apos desviar a rota, a funcao analisa qual foi a escolha do usuario
     1 - ficar parado no acampamento
     2 - procurar amigos pela floresta
     ambas as escolhas caem nos mesmos resultados
     */
    var decisao = confere_input()
    if decisao == "1" {
        ficar_parado(nome:nome)
    } else {
        procurar_amigos(nome:nome)
    }
    
    decisao = confere_input()
    //farol que da certo ou caverna
}

func mantem_rota(nome:String) {
    print("""
        Com o sinal GPS fraco, vocês continuam a viagem segundo planejado. O Pedro, ainda assustado pela situação, repara numa árvore com marcas estranhas, parecem ser garras de algum animal, o que deixa todos eles arrepiados e em alerta.     PEDRO: “Jesus! Eu sabia que não era uma boa ideia! Olha aquela árvore ali, tem algum animal muito grande para cá”.
            MARINA: “Nossa. Mas não vai estar no nosso acampamento, vamos continuar e vai dar tudo certo.”
            Vocês seguem o caminho por mais um tempo, e o GPS para completamente de funcionar, mas já estavam próximos do seu destino. Você repara que passaram por uma arvore com aquelas marcas novamente.
            VOCE: “Gente…  Não parece a mesma arvore?
            MARINA: “Não viaja, {fulano}, é só parecida.”
            PEDRO: “Nossa, mas é até o mesmo formato! Onde a gente está? Estamos seguindo essa estrada reta a tempos e nada! Já era para termos chegado!”
            Vocês já estão a um tempo na estrada e já anoiteceu, sendo o farol do carro a única luz para se guiar, mas não resta tanto combustível no carro.
            MARINA: “Acho que podemos acampar por aqui mesmo. O espaço na floresta não é ruim, é para ter um rio próximo.”
            PEDRO: “Tá maluca? Vamos chegar ao acampamento, pelo que vi antes no GPS, era só seguir essa estrada mesmo! Uma hora vamos chegar.”\n\t\t- Digite 1 para seguir para montar o acampamento onde estão\n\t\t- Digite 2 para seguir o caminho
    """)
}

func ficar_parado(nome:String) {
    print("""
   Passam-se mais uns 30 minutos e seus amigos não retornaram. Algo definitivamente está errado. Não era tão difícil encontrar o local que estavam acampados, considerando que bastava se guiar pelo fluxo do rio. O frio já tomou conta, e um forte vento gelado apaga a fogueira. A iluminação torna-se bastante escassa. Uma música começa a vir do rádio carro, uma música antiga. Você leva um susto e se aproxima do carro, mas ele estava vazio, aparentemente não tinha ninguém ali ou nos ao redores. De repente o carro desliga novamente, e começa a soltar muita fumaça. Você decide subir em uma árvore e observar a floresta por cima.
       De lá, você vê apenas duas informações: de um lado vê um ponto de luz saindo de uma pequena caverna, bastante luminosa, que parece ser outra fogueira. Pode ser que haja gente acampando ali também, talvez possam ser de ajuda, mas o caminho até ali é completamente escuro, com muitas pedras e alguns vultos se movendo rapidamente por ali. No outro lado você vê um alto farol de vigilância florestal, bem mais visível, porém muito velho e com aparência de abandonado há muitos anos. Para onde você deseja seguir?\n\t\t- Digite 1 para seguir para a caverna\n\t\t- Digite 2 para seguir para o farol
   """)
}

func procurar_amigos(nome:String) {
   print("""
        O frio já tomou conta, e um forte vento gelado apaga a fogueira. A iluminação torna-se bastante escassa. Você decide deixar o acampamento e ir procurar seus amigos. Já está tarde e você está preocupado com o estado deles, porém, a floresta é escura e está cheia de mistérios. Você decide subir em uma árvore e observar a floresta por cima.
        De lá, você vê apenas duas informações: de um lado vê um ponto de luz saindo de uma pequena caverna, bastante luminosa, que parece ser outra fogueira. Pode ser que haja gente acampando ali também, talvez possam ser de ajuda, mas o caminho até ali é completamente escuro, com muitas pedras e alguns vultos se movendo rapidamente por ali. No outro lado você vê um alto farol de vigilância florestal, bem mais visível, porém muito velho e com aparência de abandonado há muitos anos. Para onde você deseja seguir?\n\t\t- Digite 1 para seguir para a caverna\n\t\t- Digite 2 para seguir para o farol
    """)
}
