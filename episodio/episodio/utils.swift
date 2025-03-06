//
//  utils.swift
//  ep-interativo
//
//  Created by Aluno 45 on 27/02/25. - oi
//

import Foundation
import Prism

func imprime_historia() {
    
    let historia_ascii = """

    ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░      ░▒▓█▓▒░       ░▒▓██████▓▒░ ░▒▓███████▓▒░▒▓████████▓▒░
       ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░
       ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░
       ░▒▓█▓▒░   ░▒▓████████▓▒░▒▓██████▓▒░        ░▒▓█▓▒░      ░▒▓████████▓▒░░▒▓██████▓▒░   ░▒▓█▓▒░
       ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░
       ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░
       ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░      ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░   ░▒▓█▓▒░
                                                                                                                                    
"""
    print(ForegroundColor(.red, historia_ascii))
    
}

func cria_personagem() -> String {
    /*
     Obtem o nome do personagem
     */
    print("Entre com o nome do personagem:")

    var nome_personagem : String = readLine()!.uppercased()

    while (nome_personagem == "PEDRO") || (nome_personagem == "MARINA") {
        print("Por favor, entre com outro nome:")
        nome_personagem = readLine()!.uppercased()
    }
    return nome_personagem.foregroundColor(.green)
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


func delay_dialogo(dialogo:Array<String>) {
    for fala in dialogo {
        print(fala)
        sleep(2)
    }
}

func da_enter() {
    print(separador)
    pula = readLine()!
}

func fim_jogo() {
    let fim_ascii = """


░▒▓████████▓▒░▒▓█▓▒░▒▓██████████████▓▒░       ░▒▓███████▓▒░░▒▓████████▓▒░             ░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░                    ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░                    ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░
░▒▓██████▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░               ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒▒▓███▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓███████▓▒░░▒▓████████▓▒░       ░▒▓██████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░
                                                                                                                                     
                                                                                                                                    

"""
    print(ForegroundColor(.red, fim_ascii))
}

func anda_carro() {
    let carros = ["""
    _______
   /______/"=,
  [     | "=, "=,,
  [-----+----"=,* )
  (_---_____---_)/
    (O)     (O)
""",
"""
\t\t\t\t\t\t\t_______
\t\t\t\t\t\t\t/______/"=,
\t\t\t\t\t\t\t[     | "=, "=,,
\t\t\t\t\t\t\t[-----+----"=,* )
\t\t\t\t\t\t\t(_---_____---_)/
\t\t\t\t\t\t\t  (O)     (O)
""",
"""
    \t\t\t\t\t\t\t\t\t\t\t\t\t\t_______
\t\t\t\t\t\t\t\t\t\t\t\t\t\t/______/"=,
\t\t\t\t\t\t\t\t\t\t\t\t\t\t[     | "=, "=,,
\t\t\t\t\t\t\t\t\t\t\t\t\t\t[-----+----"=,* )
\t\t\t\t\t\t\t\t\t\t\t\t\t\t(_---_____---_)/
\t\t\t\t\t\t\t\t\t\t\t\t\t\t  (O)     (O)
"""
]
    
    for carro in carros {
        print(ForegroundColor(.green, carro))
        usleep(500000)
    }
}

func imprime_titulo_cap1() {
    let titulo = #"""
   ____            _ _         _         _        _            _
  / ___|__ _ _ __ (_) |_ _   _| | ___   / |      / \    __   _(_) __ _  __ _  ___ _ __ ___
 | |   / _` | '_ \| | __| | | | |/ _ \  | |     / _ \   \ \ / / |/ _` |/ _` |/ _ \ '_ ` _ \
 | |__| (_| | |_) | | |_| |_| | | (_) | | |_   / ___ \   \ V /| | (_| | (_| |  __/ | | | | |
  \____\__,_| .__/|_|\__|\__,_|_|\___/  |_(_) /_/   \_\   \_/ |_|\__,_|\__, |\___|_| |_| |_|
            |_|                                                        |___/
"""#
    print(ForegroundColor(.yellow, titulo))
}

func imprime_titulo_cap2() {
    let titulo = #"""
   ____            _ _         _         ____         _       __ _                     _
  / ___|__ _ _ __ (_) |_ _   _| | ___   |___ \       / \     / _| | ___  _ __ ___  ___| |_ __ _
 | |   / _` | '_ \| | __| | | | |/ _ \    __) |     / _ \   | |_| |/ _ \| '__/ _ \/ __| __/ _` |
 | |__| (_| | |_) | | |_| |_| | | (_) |  / __/ _   / ___ \  |  _| | (_) | | |  __/\__ \ || (_| |
  \____\__,_| .__/|_|\__|\__,_|_|\___/  |_____(_) /_/   \_\ |_| |_|\___/|_|  \___||___/\__\__,_|
            |_|
"""#
    print(ForegroundColor(.yellow, titulo))
}


func imprime_titulo_cap3() {
    let titulo = #"""
   ____            _ _         _         _____     ___        _            __           _
  / ___|__ _ _ __ (_) |_ _   _| | ___   |___ /    / _ \    __| | ___  ___ / _| ___  ___| |__   ___
 | |   / _` | '_ \| | __| | | | |/ _ \    |_ \   | | | |  / _` |/ _ \/ __| |_ / _ \/ __| '_ \ / _ \
 | |__| (_| | |_) | | |_| |_| | | (_) |  ___) |  | |_| | | (_| |  __/\__ \  _|  __/ (__| | | | (_) |
  \____\__,_| .__/|_|\__|\__,_|_|\___/  |____(_)  \___/   \__,_|\___||___/_|  \___|\___|_| |_|\___/
            |_|


"""#
    print(ForegroundColor(.yellow, titulo))
}

func caverna_ou_farol( ) {
    let caverna_ou_farol =
    #"""

        ********************************************************************************
    *                    /   \              /'\       _                              *
    *\_..           /'.,/     \_         .,'   \     / \_                            *
    *    \         /            \      _/       \_  /    \     _                     *
    *     \__,.   /              \    /           \/.,   _|  _/ \                    *
    *          \_/                \  /',.,''\      \_ \_/  \/    \                   *
    *                           _  \/   /    ',../',.\    _/      \                  *
    *             /           _/m\  \  /    |         \  /.,/'\   _\                 *
    *           _/           /MMmm\  \_     |          \/      \_/  \                *
    *          /      \     |MMMMmm|   \__   \          \_       \   \_              *
    *                  \   /MMMMMMm|      \   \           \       \    \             *
    *                   \  |MMMMMMmm\      \___            \_      \_   \            *
    *                    \|MMMMMMMMmm|____.'  /\_            \       \   \_          *
    *                    /'.,___________...,,'   \            \   \        \         *
    *                   /       \          |      \    |__     \   \_       \        *
    *                 _/        |           \      \_     \     \    \       \_      *
    *                /                               \     \     \_   \        \     *
    *                                                 \     \      \   \__      \    *
    *                                                  \     \_     \     \      \   *
    *                                                   |      \     \     \      \  *
    *                                                    \ms          |            \ *
     ********************************************************************************

        ou

                            
                                            +             /
                            \           |           /
                              \         |         /
                                \      / \      /
                                  \  /_____\  /
                                  /  |__|__|  \
                                /  |;|     |;|  \
                              /    \\.    .  /    \
                            /       ||:  .  |       \
                                    ||:     |         \
                                    ||:.    |           \
                                    ||:    .|
                                    ||:   , |         /`\
                                    ||:     |
                                    ||: _ . |
                                   _||_| |__|                      ____
                              ____~    |_|  |___           __-----~
                            -~                  ~---___,--~'
                            `~----,____
    """#
    
    print(ForegroundColor(.green, caverna_ou_farol))
}
