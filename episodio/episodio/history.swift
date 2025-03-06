import Foundation
import Prism

var pula:String = "\n"
let separador:String = "\n\t\t\t\t\t\t\t\t----------PRESSIONE ENTER----------"

let pedro = Prism {
    Bold {
        ForegroundColor(.cyan) {
                "PEDRO"
        }
    }
}

let marina = Prism {
    Bold {
        ForegroundColor(.magenta) {
                "MARINA"
        }
    }
}

let narrador = Prism {
    Bold {
        ForegroundColor(.yellow) {
            "NARRADOR: "
        }
    }
}

func imprime_cap1(nome:String) {
    imprime_titulo_cap1()
    print("""
    \(narrador)Numa sexta-feria ao entardecer, você e seus amigos estão indo acampar de carro. Sem perceber, entraram numa estrada perigosa e o sinal GPS começa falhar. Assustados, vocês tentam voltar ao caminho, mas acabam se perdendo. Ainda sem muita certeza de onde estão, seu GPS volta a funcionar e recalcula a rota.
    """)
    da_enter()
    anda_carro()
    da_enter()
    print("""
    \(narrador)Depois de um tempo nesse ‘novo’ caminho, passa subitamente no meio da estrada o que parece ser um animal, correndo em direção ao local que vocês precisam seguir. Você freia o carro bruscamente e escutam galhos se quebrando, parece ser algo ou alguém muito grande, mas vocês não conseguem identificar o que é.
    """)
    da_enter()
    let dialogo = [
    "\(pedro): ‘Meu Deus! Que bizarro, o que é isso?’",
    "\(marina): ‘Para de ser medroso, é só um bichinho.’",
    "\(pedro): 'Bichinho? É quase um leão!'",
    "\(marina): 'Ah, como eu achei que ia dar certo acampar na natureza com alguém com medo até do barulho do vento? Só segue o caminho aí.'",
    "\(pedro): 'Não cara, é um barulho meio preocupante mesmo! Como a gente já está perto, podemos ir para o outro lado e acampar por lá mesmo. Né, \(nome)?"]
    delay_dialogo(dialogo: dialogo)
    da_enter()
    print("""
    \(narrador)Pedro, assustado, sugere desviar da rota e seguir para um local mais silencioso. Já Marina prefere seguir a rota planejada.\n\tCabe a você, \(nome), desempatar a decisão. O que você prefere?
        \(ForegroundColor(.red, "- Digite 1 para desviar da rota 🛣"))
        \(ForegroundColor(.red, "- Digite 2 para seguir o caminho planejado 🗺"))
    """)
    let estrada =
    #"""
                                                                       _
                                         ___                          (_)
                                       _/XXX\
                        _             /XXXXXX\_                                    __
                        X\__    __   /X XXXX XX\                          _       /XX\__      ___
                            \__/  \_/__       \ \                       _/X\__   /XX XXX\____/XXX\
                          \  ___   \/  \_      \ \               __   _/      \_/  _/  -   __  -  \__/
                         ___/   \__/   \ \__     \\__           /  \_//  _ _ \  \     __  /  \____//
                        /  __    \  /     \ \_   _//_\___     _/    //           \___/  \/     __/
                        __/_______\________\__\_/________\_ _/_____/_____________/_______\____/_______
                                                          /|\
                                                         / | \
                                                        /  |  \
                                                       /   |   \
                                                      /    |    \
                                                     /     |     \
                                                    /      |      \
                                                   /       |       \
                                                  /        |        \
                                                 /         |         \
    """#
        print(ForegroundColor(.green, estrada))
}

func capitulo_2(nome:String, escolha:String) {
    imprime_titulo_cap2()
    if escolha == "1" {
        // opcao escolhida: desviar a rota
        desvia_rota(nome: nome)
        escolha_rota_desviada(nome: nome)
    } else {
        mantem_rota(nome:nome)
        escolha_mesma_rota(nome: nome, escolha: escolha)
    }
    
}

func desvia_rota(nome:String) {
    print("""
    \(narrador)Vocês seguem para o caminho oposto ao barulho. Por fim, você e seus amigos chegam em um local silencioso. Está um belo por do sol adiante, vocês estão rodeados por árvores e um extenso rio está próximo, mas não conseguem ver muito mais que isso. Parecem estar completamente sozinhos.
    Você e Marina instalam as barracas antes do sol se por completamente, enquanto Pedro vai lavar o rosto no rio para relaxar depois desse trajeto tortuoso. Passam-se uns 10 minutos, e nada do Pedro.
    """)
    let por_do_sol =
        #"""
                                .       .        .
                                 .      .       .        .'               .--.
                         '.       .     .      .       .'       ________.'_.'_____.--.___
                           '.      .    .     .      .'        ()_() ooo   ~/   -.|      "-._
                             '.     .   .    .     .'          ((((<____   |      |  ____  = )
                               '.    .  .   .    .'       .-'  (__)/ () \___\_____|_/ () \__/)
                        .        '   ______    .'      .-'    ___'.'.__.'_________'.'.__.'____
                         '-.      .-~      ~-.      .-'      /
                            '-. .'            '. .-'      __/
                        _      .                .      _./
                         '-._ .                  . _.-'  |
                              :                  :      /
                          .-' .                  . '- .'
                        -'     .                . . .'
                            .'  '.            .' _.'
                          .'  .'  '__________'.-'
                        ~~~~~~~~~~~~~~~~~~~~~/
                        ~~  ~~~    ~~~ ~~ ~ /
                          ~~   ~~~~  ~~~~ ~/

    """#
    print(ForegroundColor(.green, por_do_sol))
    da_enter()
    
    let dialogo = [
    "\(nome): “Cadê o Pedro? Não consigo vê-lo e ele ainda não voltou…”",
    "\(marina): “Não sei, vamos esperar que logo ele volta. Vamos acendendo uma fogueira enquanto isso, está começando a esfriar.”",
    "Você concorda, mas continua ansioso com a demora do Pedro. Passam-se mais uns 30 minutos e nada dele.",
    "\(marina): “Estou achando que o Pedro se perdeu, ele é muito atrapalhado, não faz nada direito. Vou procurar ele enquanto ainda não escureceu totalmente. Fica aqui cuidando das coisas, ok?”",
    "\(nome): “Beleza”"]
    
    delay_dialogo(dialogo: dialogo)
    
    let fogueira =
        
        #"""
                                        ______
                                       /     /\
                                      /     /  \
                                     /_____/----\_    (
                                    "     "          ).
                                   _ ___          o (:') o
                                  (@))_))        o ~/~~\~ o
                                                  o  o  o
    """#
        
    print(ForegroundColor(.green, fogueira))
    da_enter()
    
    print("""
    \(narrador)Depois de uns 15 minutos, o sol já se pôs totalmente, a única iluminação que resta é a da Lua cheia e do fogo que você e Marina acenderam. Nenhum de seus amigos voltaram ainda e você começa a questionar se eles estão bem.
    """)
    print("""
    \(narrador)Será melhor continuar vigiando o local caso eles apareçam, ou ir em busca deles?
        \(ForegroundColor(.red, "- Digite 1 para ficar parado 📍"))
        \(ForegroundColor(.red, "- Digite 2 para procurar seus amigos 🔍"))
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
    capitulo_3_desvia(nome: nome, decisao: decisao)
}

// CAMINHOS DA ROTA DESVIADA
func ficar_parado(nome:String) {
    print("""
    \(narrador)Passam-se mais uns 30 minutos e seus amigos não retornaram. Algo definitivamente está errado. Não era tão difícil encontrar o local que estavam acampados, considerando que bastava se guiar pelo fluxo do rio. O frio já tomou conta, e um forte vento gelado apaga a fogueira. A iluminação torna-se bastante escassa. Uma música começa a vir do rádio carro, uma música antiga. Você leva um susto e se aproxima do carro, mas ele estava vazio, aparentemente não tinha ninguém ali ou nos ao redores. De repente o carro desliga novamente, e começa a soltar muita fumaça. Você decide subir em uma árvore e observar a floresta por cima.
   """)
    da_enter()
    print("""
    \(narrador)De lá, você vê apenas duas informações: de um lado vê um ponto de luz saindo de uma pequena caverna, bastante luminosa, que parece ser outra fogueira. Pode ser que haja gente acampando ali também, talvez possam ser de ajuda, mas o caminho até ali é completamente escuro, com muitas pedras e alguns vultos se movendo rapidamente por ali. No outro lado você vê um alto farol de vigilância florestal, bem mais visível, porém muito velho e com aparência de abandonado há muitos anos.
   """)
    da_enter()
    print("""
    \(narrador)Para onde você deseja seguir?
    \(ForegroundColor(.red, "- Digite 1 para seguir para a caverna 🗿"))
    \(ForegroundColor(.red, "- Digite 2 para seguir para o farol 🗼"))
   """)
    caverna_ou_farol()
}

func procurar_amigos(nome:String) {
   print("""
    \(narrador)O frio já tomou conta, e um forte vento gelado apaga a fogueira. A iluminação torna-se bastante escassa. Você decide deixar o acampamento e ir procurar seus amigos. Já está tarde e você está preocupado com o estado deles, porém, a floresta é escura e está cheia de mistérios. Você decide subir em uma árvore e observar a floresta por cima.
    """)
    da_enter()
    print("""
    \(narrador)De lá, você vê apenas duas informações: de um lado vê um ponto de luz saindo de uma pequena caverna, bastante luminosa, que parece ser outra fogueira. Pode ser que haja gente acampando ali também, talvez possam ser de ajuda, mas o caminho até ali é completamente escuro, com muitas pedras e alguns vultos se movendo rapidamente por ali. No outro lado você vê um alto farol de vigilância florestal, bem mais visível, porém muito velho e com aparência de abandonado há muitos anos.
    """)
    da_enter()
    print("""
    \(narrador)Para onde você deseja seguir?
    \(ForegroundColor(.red, "- Digite 1 para seguir para a caverna 🗿"))
    \(ForegroundColor(.red, "- Digite 2 para seguir para o farol 🗼"))
    """)
    caverna_ou_farol()
}


func mantem_rota(nome:String) {
    print("""
    \(narrador)Com o sinal GPS fraco, vocês continuam a viagem segundo planejado. O Pedro, ainda assustado pela situação, repara numa árvore com marcas estranhas, parecem ser garras de algum animal, o que deixa todos eles arrepiados e em alerta.
    """)
    da_enter()
    var dialogo = [
    "\(pedro): “Jesus! Eu sabia que não era uma boa ideia! Olha aquela árvore ali, tem algum animal muito grande para cá”.",
    "\(marina): “Nossa. Mas não vai estar no nosso acampamento, vamos continuar e vai dar tudo certo.”",
    "\(narrador)Vocês seguem o caminho por mais um tempo, e o GPS para completamente de funcionar, mas já estavam próximos do seu destino. Você repara que passaram por uma arvore com aquelas marcas novamente.",
    "\(nome): “Gente…  Não parece a mesma arvore?",
    "\(marina): “Não viaja, \(nome), é só parecida.”",
    "\(pedro): “Nossa, mas é até o mesmo formato! Onde a gente está? Estamos seguindo essa estrada reta a tempos e nada! Já era para termos chegado!”"]
    delay_dialogo(dialogo: dialogo)
    da_enter()
    print("""
    \(narrador)Vocês já estão a um tempo na estrada e já anoiteceu, sendo o farol do carro a única luz para se guiar, mas não resta tanto combustível no carro.
    """)
    dialogo = [
    "\(marina): “Acho que podemos acampar por aqui mesmo. O espaço na floresta não é ruim, é para ter um rio próximo.”",
    "\(pedro): “Tá maluca? Vamos chegar ao acampamento, pelo que vi antes no GPS, era só seguir essa estrada mesmo! Uma hora vamos chegar.”"]
    delay_dialogo(dialogo: dialogo)
    da_enter()
    print("""
    \(narrador)O que você faz?
        \(ForegroundColor(.red, "- Digite 1 para montar o acampamento onde estão 🏕"))
        \(ForegroundColor(.red, "- Digite 2 para seguir o caminho 🛣"))
    """)
}


func escolha_mesma_rota(nome:String, escolha:String) {
    // se manter a mesma rota, decidir parar para acampar ou continuar rodando com o carro
    var escolha = confere_input()
    if escolha == "1" {
        acampar_no_local(nome:nome)
    } else {
        continuar_rodando(nome:nome)
    }
    escolha = confere_input()
    capitulo_3_segue(nome: nome, decisao: escolha)
    
}

// CAMINHOS DA MESMA ROTA
func acampar_no_local(nome:String) {
    print("""
    \(narrador)Vocês começam montar o acampamento, pois estava escuro e frio. O Pedro decide usar uma lanterna e ir até um rio perto para buscar água. Passados uns 30 minutos da saída do Pedro, você e a Marina ficam preocupados pois ele ainda não voltou.
    """)
    da_enter()
    let dialogo = [
    "\(marina): ”\(nome), o Pedro ainda não voltou, não acha que deveríamos ir buscar ele?”",
    "\(nome): “Você tem razão, Marina, mas a gente ainda não montou o acampamento, eu vou ficar aqui terminando de montar, você se importa de ir dar uma olhada? Talvez ele só esteja deitado sobre uma pedra descansando.”",
    "\(marina): “Pode ser, \(nome).”"]
    delay_dialogo(dialogo: dialogo)
    da_enter()
    print("""
    \(narrador)Você termina de montar o acampamento, porém, nenhum dos seus amigos voltou ainda e fica preocupado. Na distância, você consegue enxergar duas fontes de luz, uma proveniente de um farol e outra proveniente de uma caverna. A caverna, bastante luminosa, pelo que parece ser outra fogueira. Pode ser que haja gente acampando ali também, talvez possam ser de ajuda, mas o caminho até ali é completamente escuro, com muitas pedras e alguns vultos se movendo rapidamente por ali. No outro lado você vê um alto farol de vigilância florestal, bem mais visível, porém muito velho e com aparência de abandonado há muitos anos.
    """)
    let fogueira =
        
        #"""
                                        ______
                                       /     /\
                                      /     /  \
                                     /_____/----\_    (
                                    "     "          ).
                                   _ ___          o (:') o
                                  (@))_))        o ~/~~\~ o
                                                  o  o  o
    """#
        
    print(ForegroundColor(.green, fogueira))
    da_enter()
    print("""
    \(narrador)Para onde você deseja seguir?
    \(ForegroundColor(.red, "- Digite 1 para seguir para a caverna 🗿"))
    \(ForegroundColor(.red, "- Digite 2 para seguir para o farol 🗼"))
    """)
    caverna_ou_farol()
}

func continuar_rodando(nome:String) {
    print("""
    \(narrador)Aproximadamente 30 minutos depois, você repara que o combustível do carro está acabando e comenta com seus amigos sobre.
    """)
    da_enter()
    
    var dialogo = [
    "\(nome): “Gente, o combustível está acabando, eu disse para a gente passar naquele posto antes de continuar o caminho. Devemos começar montar o acampamento, pois já está tarde.”",
    "\(pedro): “De jeito nenhum, precisamos chegar num lugar seguro pelo menos, já esqueceram das marcas da árvore?”",
    "\(marina): “Pelo amor de Deus Pedro, para de ser medroso, você tem medo até da sua própria sombra.”"  ]
    delay_dialogo(dialogo: dialogo)
    da_enter()
    print("""
    \(narrador)Vocês decidem acampar perto da estrada, na esperança de alguém passar e pedir ajuda. Pedro, ainda com medo, começa dar voltas ao redor do acampamento, enquanto você e a Marina terminam de montar.
    """)
    da_enter()
    dialogo = [
    "\(pedro):”Ai meu Deus, essa é a árvore das marcas, a gente veio justo acampar do lado. Esse lugar é muito estranho, devemos ir embora.”",
    "\(nome):”Calma Pedro, tem muitas especies de animais inofensivos que fazem esse tipo de marcas, é um jeito de marcar território“",
    "\(marina): “Ah, \(nome)! não foi uma boa ideia vir acampar com ele, só reclama, você esperava o que da floresta? Pipoca e chocolate? Vamos naquele rio perto buscar água enquanto \(nome) termina de montar o acampamento”"]
    
    delay_dialogo(dialogo: dialogo)
    let fogueira =
        
        #"""
                                        ______
                                       /     /\
                                      /     /  \
                                     /_____/----\_    (
                                    "     "          ).
                                   _ ___          o (:') o
                                  (@))_))        o ~/~~\~ o
                                                  o  o  o
    """#
        
    print(ForegroundColor(.green, fogueira))
    da_enter()
    print("""
    \(narrador)Passou mais de 30 minutos e nenhum sinal dos seus amigos, você, desesperado, pensa em sair buscar eles. De lá, você vê apenas duas informações: de um lado vê um ponto de luz saindo de uma pequena caverna, bastante luminosa, que parece ser outra fogueira. Pode ser que haja gente acampando ali também, talvez possam ser de ajuda, mas o caminho até ali é completamente escuro, com muitas pedras e alguns vultos se movendo rapidamente por ali. No outro lado você vê um alto farol de vigilância florestal, bem mais visível, porém muito velho e com aparência de abandonado há muitos anos.
    """)
    da_enter()
    print("""
    \(narrador)Para onde você deseja seguir?
        \(ForegroundColor(.red, "- Digite 1 para seguir para a caverna 🗿"))
        \(ForegroundColor(.red, "- Digite 2 para seguir para o farol 🗼"))
    """)
    caverna_ou_farol()
}

func capitulo_3_desvia(nome:String, decisao:String) {
    imprime_titulo_cap3()
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
    print(ForegroundColor(.yellow, "Capítulo 3. O desfecho."))
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
    \(narrador)Você chega ao farol, o caminho não foi muito complicado, mas já estava muito frio e você tinha pouca visibilidade. Tenta entrar pela porta mas está trancada. Decide subir a escada, que tem uma aparência bastante velha. Você passa a mão pelos degraus e percebe que são feitos de madeira, e não tinha nenhum corrimão. Você sobe a escada, já está mais alto que as árvores ao redor. Conforme você sobe, sente cheiro de mofo - alguns degraus estão apodrecendo, um passo errado e você pode despencar dali - a queda definitivamente causaria uma morte, ou minimamente te impediria de se mover até que alguém o encontrasse… se alguém o encontrasse…
    """)
    da_enter()
    print("""
    \(narrador)Você escuta os rangidos dos degraus, mas finalmente consegue chegar ao topo. Está muito frio, você está tremendo e corre risco de uma hipotermia se continuar do lado de fora. Você não consegue enxergar muito bem, mas parece escutar alguém ali dentro. Pela janela você vê o vulto de alguém que parece ser um funcionário. Talvez seja um guarda.
    """)
    da_enter()
    print("""
    \(narrador)Você pode bater na janela para pedir para ele abrir a porta para você, ou pode descer e ir para a caverna vista anteriormente. O que você faz?
        \(ForegroundColor(.red, "- Digite 1 para bater na janela 🪟"))
        \(ForegroundColor(.red, "- Digite 2 para tentar ir para a caverna vista anteriormente 🗿"))
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
    \(narrador)Ao bater na janela, um homem que está ali dentro olha para você, um pouco confuso. Você grita por ajuda e, então, ele abre a porta para você. Você explica toda a situação para ele, e ele lhe diz que já viu situações como essas antes, aquela floresta claramente escondia muitos mistérios. Ele acionou a polícia e outros dos guardas, por um rádio um pouco antigo, e organizou uma busca por toda a floresta.
    """)
    da_enter()
    print("""
    \(narrador)Durante a madrugada, uma grande equipe adentrou a floresta a procura de Pedro e Marina. Helicópteros sobrevoavam pelas árvores, ajudando a iluminar a floresta escura. Depois de algumas horas, o guarda voltou para o farol, acompanhado dos seus dois amigos perdidos. Você sente um grande alívio, e os abraça. Eles estão muito desnorteados, sem memórias do que tinha acontecido nessas últimas horas. Por fim, vocês se abrigam no farol até o amanhecer, e retornam em segurança para suas casas, com ajuda dos guardas.
    """)
    fim_jogo()
}


// Caverna com outros finais
func caverna_rota_desviada() {
    print("""
    \(narrador)Chegando próximo a caverna, você começa a buscar por algum sinal de seus amigos, e vê algumas pegadas no lama no chão. São pegadas de pessoas e outras maiores, que você não consegue identificar do que seria. Está frio e escuro, a floresta parece mais silenciosa que o normal. Não ha sons de animais próximos, e a única fonte de luz vem de dentro da caverna. Enquanto você corre até ela, encontra a blusa de marina no chão. ela nunca a perderia. Você se apressa para poder se abrigar e assim procura-los antes que algo pior aconteça. Na entrada da caverna, a luz se intensifica, sem ficar muito claro de onde ela vem. Com um certo receio, você repensa adentra-la.
    """)
    da_enter()
    print("""
    \(narrador)Você entra na caverna e ainda não encontra ninguém. As paredes apresentam padrões estranhos, definitivamente desenhados por alguém. A caverna é mais profunda do que parecia, e você continua a explora-la. Ha roupas e vestígios de que alguém esteve por la, mas ainda nada de seus amigos. Entre os pertences, você identifica o boné do Pedro. As roupas que encontrou estavam estranhamente jogadas. Ao ver de perto percebe que estavam rasgadas, sujas. Você se abaixa e vê que entre elas, estavam as roupas de seus amigos também. Algo parece obstruir a luz que iluminava a caverna. Uma sombra rapidamente aumenta sobre você, e o mesmo barulho do animal ouvido por vocês na estrada é o ultimo que você escuta antes que suas garras te alcancem.
    """)
    fim_jogo()
}

// Caverna caso mantenha rota
func caverna_manteve_rota(){
    print("""
    \(narrador)Chegando próximo a caverna, você começa a buscar por algum sinal de seus amigos, e vê algumas pegadas no lama no chão. São pegadas de pessoas e outras maiores, que você não consegue identificar do que seria. Está frio e escuro, a floresta parece mais silenciosa que o normal. Não ha sons de animais próximos, e a única fonte de luz vem de dentro da caverna. Enquanto você corre até ela, encontra a blusa de marina no chão. ela nunca a perderia. Você se apressa para poder se abrigar e assim procura-los antes que algo pior aconteça. Na entrada da caverna, a luz se intensifica, sem ficar muito claro de onde ela vem.
    """)
    da_enter()
    print("""
    \(narrador)Com um certo receio, você repensa adentra-la, ou ir ate o farol buscar ajuda, já que não escuta a voz ou a presença de ninguém.
        \(ForegroundColor(.red, "- Digite 1 para seguir para a caverna 🗿"))
        \(ForegroundColor(.red, "- Digite 2 para seguir para o farol 🗼"))
    """)
    caverna_ou_farol()
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
    \(narrador)Você chega ao farol, o caminho não foi muito complicado, mas já estava muito frio e você tinha pouca visibilidade. Tenta entrar pela porta mas está trancada. Decide subir a escada, que tem uma aparência bastante velha. Você passa a mão pelos degraus e percebe que são feitos de madeira, e não tinha nenhum corrimão. Você sobe a escada, já está mais alto que as árvores ao redor. Conforme você sobe, sente cheiro de mofo - alguns degraus estão apodrecendo, um passo errado e você pode despencar dali - a queda definitivamente causaria uma morte, ou minimamente te impediria de se mover até que alguém o encontrasse… se alguém o encontrasse…
    """)
    da_enter()
    print("""
    \(narrador)Você escuta os rangidos dos degraus, mas finalmente consegue chegar ao topo. Está muito frio, você está tremendo e corre risco de uma hipotermia se continuar do lado de fora. A única forma de adentrar o farol é quebrando a janela com uma barra de metal que está ali no chão.
    """)
    da_enter()
    print("""
    \(narrador)Você quebra a janela e consegue entrar. O lugar parece abandonado: você vê muita bagunça, alguns cacos de vidro quebrado no chão, as paredes estão arranhadas, como se um animal muito grande tivesse passado por ali, de alguma forma. É tudo muito antigo e aparentemente de pouca relevância. Há algumas revistas de muitos anos atrás, livros, objetos pessoais que indicavam que alguém morou ali por um tempo, mas há décadas atrás.
    """)
    let livros = #"""
     _________________________________________________________
    ||-------------------------------------------------------||
    ||.--.    .-._                        .----.             ||
    |||==|____| |H|___            .---.___|""""|_____.--.___ ||
    |||  |====| | |xxx|_          |+++|=-=|_  _|-=+=-|==|---|||
    |||==|    | | |   | \         |   |   |_\/_|Black|  | ^ |||
    |||  |    | | |   |\ \   .--. |   |=-=|_/\_|-=+=-|  | ^ |||
    |||  |    | | |   |_\ \_( oo )|   |   |    |Magus|  | ^ |||
    |||==|====| |H|xxx|  \ \ |''| |+++|=-=|""""|-=+=-|==|---|||
    ||`--^----'-^-^---'   `-' ""  '---^---^----^-----^--^---^||
    ||-------------------------------------------------------||
    ||-------------------------------------------------------||
    ||               ___                   .-.__.-----. .---.||
    ||              |===| .---.   __   .---| |XX|<(*)>|_|^^^|||
    ||         ,  /(|   |_|III|__|''|__|:x:|=|  |     |=| Q |||
    ||      _a'{ / (|===|+|   |++|  |==|   | |  |Illum| | R |||
    ||      '/\\/ _(|===|-|   |  |''|  |:x:|=|  |inati| | Y |||
    ||_____  -\{___(|   |-|   |  |  |  |   | |  |     | | Z |||
    ||       _(____)|===|+|[I]|DK|''|==|:x:|=|XX|<(*)>|=|^^^|||
    ||              `---^-^---^--^--'--^---^-^--^-----^-^---^||
    ||-------------------------------------------------------||
    ||_______________________________________________________||
"""#
    print(ForegroundColor(.green, livros))
    da_enter()
    print("""
    \(narrador)Perto dessas revistas, tem um livro, que parece ser um diário, a única coisa mais recente e não completamente coberta por pó. Você decide abrir o diário ou não?
        \(ForegroundColor(.red, "- Digite 1 para abrir o diário 📔"))
        \(ForegroundColor(.red, "- Digite 2 para não abrir 🚫"))
""")
    let livro = #"""
   ,   ,
  /////|
 ///// |
|~~~|  |
|===|  |
|j  |  |
| g |  |
|  s| /
|===|/
'---'
"""#
    print(ForegroundColor(.green, livro))
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
    \(narrador)Voce abre o diário, que, apesar de um pouco antigo, parece bem mais atual que o restante dos pertences no farol. Nele, há várias paginas de uma pessoa descrevendo seus dias sobrevivendo nessa parte da floresta sozinha após se perder, muito parecido com a sua situação. Inicialmente parece muito útil, mas as anotações passam a ficar meio estranhas e perdendo o sentido. Entre essas paginas desconexas, um texto em específico chama sua atenção:
    """)
    da_enter()
    print("""
    \(narrador)“Não há mais escapatória. Eu lutei contra a verdade todo esse tempo, mas não ha mais nada a ser feito. Espero que isso não seja encontrado por ninguém, mas se você esta lendo isso, sinto muito. Há mistérios demais nessa floresta, e o fenômeno que me prendeu aqui nunca ficou claro, mas não me resta nada a ser feito. todos os lugares dessa floresta parecem muito similares, não? Mesmas arvores. Mesmos animais. O rio que nunca tem fim. A caverna que, não importa a onde esteja, sempre chega até ela. Se conseguiu escapar da criatura que habita aquele lugar e chegar até aqui, parabéns. Mas talvez aquele fosse um destino menos cruel. Passar o resto de sua existência preso nesse loop enquanto a floresta te consome é o pior que poderia ter me acontecido.”
""")
    fim_jogo()
}

// Caso não abra o diário
func nao_abrir() {
    print("""
    \(narrador)Você opta, com medo, a não abrir o diário. De repente a floresta fica completamente silenciosa, não é possível escutar absolutamente nada, nem mesmo o barulho do vento que estava tão forte. Você olha pela janela do farol mas tudo está muito escuro lá fora. Então, você se vira de costas para a janela. Algo parece obstruir a lâmpada que iluminava o farol. Uma sombra rapidamente aumenta sobre você, e o mesmo barulho do animal ouvido por vocês na estrada é o ultimo que você escuta antes que suas garras te alcancem.
""")
    fim_jogo()
}
