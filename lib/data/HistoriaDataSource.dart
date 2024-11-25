import 'Escolha.dart';
import 'Historia.dart';
import 'ParteHistoria.dart';
import 'SubParteHistoria.dart';

class HistoriaDataSource {
  static final Historia historia = Historia(
    titulo: "A Cidade das Sombras",
    sinopse: """
       Você é **Kai**, um jovem com habilidades especiais que perdeu a memória após acordar em uma cidade desconhecida, **New Haven**, onde a corrupção e o caos estão à espreita. As ruas estão repletas de pessoas desesperadas, e uma organização secreta chamada **Ordem das Sombras** controla a cidade nas sombras, manipulando eventos e pessoas para seus próprios interesses. Sua missão é descobrir a verdade sobre quem você é, como escapou da Ordem, e o que há de tão importante em você que eles estão dispostos a te caçar a qualquer custo. Cada escolha que você fizer definirá o destino de New Haven e o seu próprio.
    """,
    partesHistoria: [
      ParteHistoria(
        idParte: 1,
        numParte: 1,
        subpartes: [
          SubParteHistoria(
            parte: "1A",
            texto: """
               Você acorda em um beco escuro e úmido, com a cabeça latejando de dor. Ao seu lado, há um pequeno pedaço de papel com apenas uma palavra escrita: "**Corra.**" Ao longe, você ouve passos se aproximando. Sem tempo para pensar, você se levanta e começa a correr pelas ruas desconhecidas da cidade.
            """,
            escolhas: [
              Escolha(
                textoEscolha: """
                   - **Escolha 1**: Correr para os esgotos (vai para Parte 2A)
                """,
                destinoEscolha: "2A",
              ),
              Escolha(
                textoEscolha: """
                   - **Escolha 2**: Entrar em um prédio abandonado (vai para Parte 2B)
                """,
                destinoEscolha: "2B",
              ),
              Escolha(
              textoEscolha: """
                   - **Escolha 3**: Subir em uma escada de incêndio para o telhado (vai para Parte 2C)
                """,
                destinoEscolha: "2C",
              ),
            ],
          ),
        ],
      ),
      ParteHistoria(
        idParte: 2,
        numParte: 2,
        subpartes: [
          SubParteHistoria(
            parte: "2A",
            texto: """
                   Você desce apressadamente para os esgotos. O cheiro é insuportável, mas logo percebe que os passos atrás de você sumiram. Você encontra um homem misterioso chamado **Arden**, um ex-membro da Ordem das Sombras que parece saber muito sobre você.
            """,
            escolhas: [
              Escolha(
                textoEscolha: """
                       - **Escolha 1**: Confiar nele e seguir seus conselhos (vai para Parte 3A)
                """,
                destinoEscolha: "3A",
              ),
              Escolha(
                textoEscolha: """
                       - **Escolha 2**: Não confiar e fugir para tentar sobreviver sozinho (vai para Parte 3B)
                """,
                destinoEscolha: "3B",
              ),
            ],
          ),
          SubParteHistoria(
            parte: "2B",
            texto: """
                   Ao entrar no prédio, você encontra uma garota chamada **Lina**, que está fugindo da mesma organização que está atrás de você. Ela revela que tem informações sobre um dispositivo escondido em New Haven, capaz de destruir a cidade ou salvá-la.
            """,
            escolhas: [
              Escolha(
                textoEscolha: """
                       - **Escolha 1**: Ajudar Lina a encontrar o dispositivo (vai para Parte 3C)
                """,
                destinoEscolha: "3C",
              ),
              Escolha(
                textoEscolha: """
                       - **Escolha 2**: Tentar convencer Lina a fugir com você da cidade (vai para Parte 3D)
                """,
                destinoEscolha: "3D",
              ),
            ],
          ),
          SubParteHistoria(
            parte: "2C",
            texto: """
                   Você sobe para o telhado e observa a cidade de cima. Ela está caótica, com sirenes ecoando e helicópteros sobrevoando. De repente, você é abordado por um homem chamado **Darius**, um agente da Ordem que afirma que pode restaurar suas memórias, mas somente se você ajudá-lo.
            """,
            escolhas: [
              Escolha(
                textoEscolha: """
                       - **Escolha 1**: Aceitar a oferta de Darius e se infiltrar na Ordem (vai para Parte 3E)
                """,
                destinoEscolha: "3E",
              ),
              Escolha(
                textoEscolha: """
                       - **Escolha 2**: Recusar e confrontar Darius (vai para Parte 3F)
                """,
                destinoEscolha: "3F",
              ),
            ],
          ),
        ],
      ),
      ParteHistoria(
        idParte: 3,
        numParte: 3,
        subpartes: [
          SubParteHistoria(
            parte: "3A",
            texto: """
Arden te leva até um refúgio seguro 
nos esgotos e revela que você era 
um experimento da Ordem, 
treinado para ser uma arma, 
mas que algo deu errado e 
você escapou. Ele oferece uma 
chance de lutar contra eles.
""",
            escolhas: [
              Escolha(
   
               textoEscolha: """
**Escolha 1**: Aceitar sua identidade e se vingar da Ordem (vai para o final 1A)
""",
                destinoEscolha: "F1A"
              ),
              Escolha(
                textoEscolha: "**Escolha 2**: Negar seu passado e tentar fugir da cidade (vai para o final 1B)",
                destinoEscolha: "F1B"
              )

            ]
          ),
          SubParteHistoria(
            parte: "3B",
            texto: """
Você foge para as profundezas da cidade, onde se depara com uma figura sombria que se identifica como **O Profeta**. Ele sabe sobre seu passado e o futuro da cidade. Ele lhe dá uma escolha: derrubar a Ordem ou unir-se a eles em troca de poder.
""",
            escolhas: [
              Escolha(
                textoEscolha: "**Escolha 1**: Derrubar a Ordem com o Profeta (vai para o final 2A)",
                destinoEscolha: "F2A"

              ),
              Escolha(
                textoEscolha: "Unir-se à Ordem e tomar seu lugar de direito (vai para o final 2B)",
                destinoEscolha: "F2B"

              )

            ]
          ),
          SubParteHistoria(
            parte: "3C",
            texto: "Você e Lina encontram o dispositivo, que parece ser uma bomba biotecnológica capaz de apagar a mente de qualquer pessoa na cidade. Ela propõe usá-la para destruir a Ordem, mas isso também pode custar a vida de inocentes.",
            escolhas: [
              Escolha(
                textoEscolha: "Ativar a bomba e acabar com a Ordem (vai para o final 3A)",
                destinoEscolha: "F3A"
              ),
              Escolha(
                textoEscolha: "Desativar a bomba e buscar outra solução (vai para o final 3B)",
                destinoEscolha: "F3B"
              )

            ]
          ),
          SubParteHistoria(
            parte: "3D",
            texto: "Você convence Lina a deixar a cidade com você, mas antes de partir, vocês são capturados pela Ordem. Ela revela que você tem algo que eles querem: um código escondido em suas memórias que pode abrir os cofres da Ordem.",

            escolhas: [
              Escolha(
                textoEscolha: "Entregar o código e ganhar sua liberdade (vai para o final 4A)", 
                destinoEscolha: "F4A"),
                Escolha(
                textoEscolha: "Lutar até o fim, custe o que custar (vai para o final 4B)", 
                destinoEscolha: "F4B")

            ]
          ),
          SubParteHistoria(
            parte: "3E",
            texto: "Darius te leva para dentro da Ordem, onde você começa a recuperar suas memórias. Descobre que foi você quem criou o dispositivo que a Ordem agora busca para dominar a cidade.",

            escolhas: [
              Escolha(
                textoEscolha: "Destruir o dispositivo antes que eles o usem (vai para o final 5A)",
                destinoEscolha: "F5A"
              ),
              Escolha(textoEscolha: "Usar o dispositivo para tomar o controle da cidade (vai para o final 5B)",
               destinoEscolha: "F5B")

            ]
          ),
          SubParteHistoria(
            parte: "3F",
            texto: "Você luta contra Darius, e no meio do combate, recupera parte de suas memórias. Lembra que ele foi o responsável por apagar suas memórias e te trair. Ao derrotá-lo, você enfrenta uma escolha: ir atrás da Ordem ou tentar escapar.",
            escolhas: [
              Escolha(
                textoEscolha: "Enfrentar a Ordem de uma vez por todas (vai para o final 6A)",
                destinoEscolha: "F6A"
              ),
              Escolha(
                textoEscolha: "Fugir da cidade e começar uma nova vida (vai para o final 6B)",
                destinoEscolha: "F6B"
              )

            ]
          ),
          SubParteHistoria(parte: "F1A", texto: "**Final 1A**: Você aceita seu passado como arma da Ordem e lidera uma rebelião, mas seu desejo de vingança consome tudo e a cidade é destruída.", escolhas: []),
          SubParteHistoria(parte: "F1B", texto: "**Final 1B**: Você foge da cidade e deixa seu passado para trás. Vive uma vida simples, mas sempre com o medo de que a Ordem te encontre.", escolhas: []),
          SubParteHistoria(parte: "F2A", texto: "**Final 2A**: Junto com o Profeta, você derruba a Ordem e se torna o novo líder das sombras, mas logo percebe que o poder corrompeu você da mesma forma.", escolhas: []),
          SubParteHistoria(parte: "F2B", texto: "**Final 2B**: Você se une à Ordem e ascende ao topo, mas perde toda sua humanidade no processo, tornando-se um fantoche deles.", escolhas: []),
          SubParteHistoria(parte: "F3A", texto: "**Final 3A**: A bomba é ativada, destruindo a Ordem e grande parte da cidade. Você e Lina sobrevivem, mas carregam o peso das vidas perdidas.", escolhas: []),
          SubParteHistoria(parte: "F3B", texto: "**Final 3B**: Vocês desativam a bomba e fogem da cidade. A Ordem se recupera, mas você começa uma nova resistência.", escolhas: []),
          SubParteHistoria(parte: "F4A", texto: "**Final 4A**: Ao entregar o código, você e Lina ganham sua liberdade, mas vivem sob constante vigilância da Ordem.", escolhas: []),
          SubParteHistoria(parte: "F4B", texto: "**Final 4B**: Vocês lutam até o fim, mas acabam capturados pela Ordem, que apaga todas as suas memórias.", escolhas: []),
          SubParteHistoria(parte: "F5A", texto: "**Final 5A**: Você destrói o dispositivo e se sacrifica no processo, mas se torna um herói para a cidade.", escolhas: []),
          SubParteHistoria(parte: "F5B", texto: "**Final 5B**: Usando o dispositivo, você toma controle da cidade, mas a Ordem te trai e te elimina.", escolhas: []),
          SubParteHistoria(parte: "F6A", texto: "**Final 6A**: Você enfrenta a Ordem e os derrota, mas percebe que nada realmente mudou. A cidade continua no caos.", escolhas: []),
          SubParteHistoria(parte: "F6B", texto: "**Final 6B**: Você foge e começa uma nova vida longe de tudo, mas sempre com a sensação de que o passado vai te alcançar.", escolhas: []),

        ]
      )
    ],
  );
}