# Recicla City: Missão Limpeza

## Game Design Document (GDD)

**Relatório Técnico - Missão 2** 

* 
**Guilda:** Mestres da Gambiarra 


* 
**Integrantes da Guilda:** Kensley A. Oliveira, Pedro Paulo Cunha, Tatiana, Thomaz Otávio 


* 
**Disciplina:** Introdução ao Desenvolvimento de Jogos 


* 
**Engine de Desenvolvimento:** Godot 4 


* 
**Plataformas-Alvo:** Mobile (Android/iOS) e PC (Windows/Web) 


* 
**Data:** Junho de 2026 



---

A. Visão Geral e Metas de Experiência 

Resumo do Jogo 

* 
*Recicla City: Missão Limpeza* é um jogo educativo casual de exploração isométrica e gerenciamento de tempo voltado ao público infanto-juvenil.


* O jogo é desenvolvido na engine Godot 4 para Mobile e PC, utilizando arte 3D estilizada renderizada em perspectiva isométrica 2D com traços *cartoon* para estabelecer uma atmosfera visualmente atraente, lúdica e otimizada para aparelhos móveis de entrada.


* O núcleo da jogabilidade (*core loop*) consiste em explorar cenários urbanos e naturais poluídos em busca de detritos espalhados.


* O jogador deve coletar os detritos por aproximação espacial automática através de comandos de clique/toque ou direcionais, gerenciar o limite físico de armazenamento da mochila e retornar aos Postos de Reciclagem para realizar a triagem seletiva correta sob a pressão implacável de um cronômetro regressivo.


* O jogo se divide em níveis progressivos (Praias, Parques e Cidades), cuja vitória definitiva exige a limpeza completa (100%) da localidade.



Logline / Frase de Efeito (The Hook) 

> "Corra contra o tempo para limpar as ruas, dominar a arte da reciclagem e transformar cidades poluídas em paraísos ecológicos vibrantes antes que o cronômetro zere!" 
> 
> 

Plataforma-Alvo e Tecnologia Base 

* O jogo foi arquitetado para abranger as plataformas **Mobile (Android)** e **PC (Windows e Web/HTML5)**.


* A escolha da engine **Godot 4** fundamenta-se na leveza do seu núcleo e na flexibilidade do seu sistema de nós (*Nodes*).


* O projeto implementa uma **Arquitetura Orientada a Componentes** e desacoplada, utilizando intensamente a comunicação por eventos (*Signals*) nativos da engine.


* Essa abordagem de engenharia de software mitiga gargalos de processamento em CPUs móveis de baixo custo, garantindo uma taxa de quadros estável (60 FPS) e alta responsividade de comandos, eliminando latências de toque cruciais para a dinâmica de gerenciamento de tempo.



Meta de Experiência e Alinhamento com a Teoria do Fluxo 

Em consonância com a literatura de Game Design (Fullerton, Cap. 11), a meta de experiência prioritária é instigar um sentimento de **"urgência recompensadora"**. O sistema equilibra dinamicamente as habilidades do público infanto-juvenil com o desafio computacional para sustentá-lo no canal de fluxo (Csikszentmihalyi), mitigando o tédio e a ansiedade através de forças de oposição mecânica e recompensas cinestésicas:

* 
**Vetor de Tensão (Ansiedade):** Alimentado pela contagem regressiva linear do cronômetro e pela restrição rígida de capacidade da mochila (limite máximo fixado em 10 detritos). Conforme o estoque de armazenamento se esgota e os segundos decrescem, o jogador enfrenta um pico de estresse positivo (*eustress*), impulsionando tomadas de decisão rápidas e planejamento estratégico de rotas geográficas no mapa.


* 
**Vetor de Alívio (Relaxamento e Dopamina):** Contrapõe-se à urgência temporal através de uma atmosfera acústica serena, baseada em trilhas sonoras calmas de Lofi e Jazz acústico, regulando o batimento cardíaco da criança. Os feedbacks cinestésicos adicionais — os efeitos sonoros táteis e agudos de "pop" durante a coleta e o tilintar cristalino/metálico ao segregar resíduos nas lixeiras corretas — geram uma liberação constante de dopamina.


* 
**Equilíbrio pelo Feedback de Revitalização:** O elo de ligação e estabilização do fluxo é a transformação do cenário em tempo real. À medida que o lixo é coletado e processado, os biomas cinzentos, murchos e poluídos se expandem dinamicamente em áreas ricas em cores, vegetação brilhante e flores. Esse feedback estético imediato valida a autoeficácia do jogador, transformando o ato pedagógico de reciclar na única mecânica viável de sobrevivência no jogo (ganho de tempo e score).



---

B. Narrativa e Contexto (Storytelling Avançado) 

Premissa Dramática 

O universo de *Recicla City* é ambientado em um ecossistema outrora próspero que sofreu um colapso socioambiental fulminante devido ao descarte industrial negligente e ao consumo desordenado. Cidades históricas, reservas florestais intocadas e praias paradisíacas foram sufocadas sob densas camadas de resíduos tecnológicos e orgânicos, fazendo com que a fauna e flora locais perdessem sua vivacidade cromática, assumindo uma tonalidade acinzentada e estéril.

O jogador assume a identidade de um jovem cientista ambiental — o **Herói Ecológico** —, equipado com uma mochila compactadora experimental de alta tecnologia (a *Mochila Eco-G*), cuja missão de vida é provar que a engenharia reversa do lixo e a conscientização comunitária imediata podem reverter fisicamente a degradação planetária.

Jornada do Usuário (Arco Narrativo) 

A estrutura do arco de progressão narrativa está organicamente entrelaçada à dificuldade crescente da engenharia lúdica das fases, estruturando-se em três atos fundamentais:

* 
**Ato I - O Despertar na Praia da Ilha Verde (Tutorial e Introdução):** O Herói depara-se com o primeiro foco de poluição litorânea. Os diálogos são minimalistas, acionados via caixas de texto com o mascote do jogo (um robô feito de sucata). A narrativa foca em ensinar os fundamentos de segregação de materiais básicos (Plástico e Papel).


* 
**Ato II - A Invasão no Parque Central (Complexidade Média):** A poluição se alastra para áreas verdes densas, introduzindo resíduos de Vidro e Metal. O arco dramático revela que a negligência populacional bloqueou fontes de água. O jogador percebe o impacto das suas mecânicas quando pequenos animais silvestres em estilo *cartoon* retornam fisicamente ao mapa conforme a vegetação ganha cores.


* 
**Ato III - A Metrópole Cinzenta (Clímax):** A fase final se passa no centro urbano de Recicla City, saturado de poluição visual e física misturada. O tempo corre 25% mais rápido, e os quatro tipos de materiais caem aleatoriamente no cenário. Vencer este nível representa o fechamento do arco da jornada do usuário, consolidando a restauração global do bioma da cidade e consagrando o jogador como o Guardião Supremo da Natureza.



Contexto do Mundo Lúdico e Integração 

A narrativa de *Recicla City* recusa terminantemente ser um adorno estético ou puramente cosmético separado do sistema. Ela funciona como o principal motor de imersão contextual do jogador. O mundo lúdico expressa o seu estado de saúde sistêmico por meio de indicadores visuais diegéticos diretos. Não há textos longos interrompendo a ação: se o jogador negligencia a separação de resíduos, o céu fecha com fumaça e as plantas murcham; se o jogador joga com precisão pedagógica, o sol brilha, o bioma ganha flores e a música expande seus canais de áudio com instrumentos acústicos extras. A história é contada pela própria jogabilidade e pela resposta sistêmica do ambiente ao redor.

---

C. Mecânicas e Mecanismos do Sistema 

Decomposição de Objetos do Sistema 

Para mapear o jogo de acordo com a teoria dos sistemas (Salen & Zimmerman, Vol. 1), delimitamos os quatro objetos atômicos que compõem o ecossistema de dados de *Recicla City*:

* 
**Jogador (Hero_Eco):** O agente ativo do sistema controlado pelo usuário, responsável por alterar o estado espacial do lixo e interagir com as lixeiras.


* 
**Detrito (Trash_Item):** Entidades passivas espalhadas pelo mapa contendo identificadores exclusivos de material que ocupam espaço volumétrico no inventário.


* 
**Posto de Reciclagem (Recycle_Bin):** Estruturas fixas na base que atuam como validadores lógicos de dados e receptores de detritos, associadas a cores específicas (Vermelho, Azul, Verde, Amarelo).


* 
**Cronômetro (Time_Manager):** Entidade controladora abstrata global que monitora a variável temporal e dita as restrições punitivas de sobrevivência do ciclo.



Atributos e Propriedades do Sistema 

Todas as entidades possuem variáveis fortemente tipadas que alimentam a lógica matemática da máquina de estados do jogo.

| Objeto | Atributo Técnico | Tipo de Dado | Escopo / Restrição / Domínio | Descrição Semântica |
| --- | --- | --- | --- | --- |
| **Hero_Eco** | `posicao_atual` | Vector2 | Coordenadas globais do mapa | Posição espacial isométrica (X, Y) do personagem. 

 |
| **Hero_Eco** | `mochila_inventario` | Array[String] | Tamanho máximo = 10 elementos | Lista encadeada contendo os tipos de materiais coletados. 

 |
| **Hero_Eco** | `quantidade_atual` | int | 0 a 10 | Número exato de itens armazenados no inventário atual. 

 |
| **Hero_Eco** | `pontuacao_total` | int | 0 a $\infty$ | Score acumulado do jogador durante a fase atual. 

 |
| **Hero_Eco** | `multiplicador_combo` | int | 1 a 5 | Fator multiplicador de pontos por depósitos corretos seguidos. 

 |
| **Trash_Item** | `tipo_material` | String | "Plastico", "Papel", "Vidro", "Metal" | Identificador categórico usado para a validação seletiva. 

 |
| **Recycle_Bin** | `tipo_aceito` | String | "Plastico", "Papel", "Vidro", "Metal" | Filtro lógico que define qual detrito confere bônus na lixeira. 

 |
| **Time_Manager** | `tempo_restante` | float | 0.0 a 120.0 segundos | Contagem regressiva contínua em segundos para o fim do nível. 

 |

Comportamentos e Regras Formais (Loop de Controle) 

O funcionamento de *Recicla City* opera sob regras formais e algoritmos lógicos estritos que governam as interações entre os atributos listados.

Algoritmo de Coleta por Aproximação Espacial 

A cada ciclo de atualização física (`_physics_process`), o sistema verifica a distância euclidiana entre a `posicao_atual` de `Hero_Eco` e a posição de cada `Trash_Item` ativo no mapa. A regra lógica formal segue a seguinte estrutura de controle de fluxo:

```
Se (Distancia_Entre(Hero_Eco, Trash_Item) <= 1.5 metros) Então 
    Se (Hero_Eco.quantidade_atual < 10) Então
        Hero_Eco.mochila_inventario.Adicionar(Trash_Item.tipo_material) 
        Hero_Eco.quantidade_atual = Hero_Eco.quantidade_atual + 1 
        Destruir_Instancia(Trash_Item)
        Emitir_Sinal_Atualizar_HUD() 
        Tocar_SFX("pop_coleta")
    Senão
        Emitir_Alerta_HUD("Mochila Cheia! Vá até a Base!") 
        Tocar_SFX("erro_inventario")
    FimSe 
FimSe

```

*(Nota: Regra lógica replicada de acordo com o GDD do sistema).* 

Algoritmo de Depósito e Validação Seletiva Pedagógica 

Quando o jogador se aproxima de um `Recycle_Bin` e pressiona o botão de descarte (ou toca na lixeira correspondente via comandos mobile), o sistema processa o último item inserido na mochila (estrutura do tipo LIFO - Last In, First Out) ou limpa a mochila sequencialmente aplicando a fórmula de pontuação e tempo:

```
Para cada item em Hero_Eco.mochila_inventario Faça
    Se (item.tipo_material == Recycle_Bin.tipo_aceito) Então
        // Depósito Correto: Aplica Bônus e Mecânica Recompensadora 
        Hero_Eco.pontuacao_total += 100 * Hero_Eco.multiplicador_combo 
        Time_Manager.tempo_restante = Min(120.0, Time_Manager.tempo_restante + 5.0) 
        Hero_Eco.multiplicador_combo = Min(5, Hero_Eco.multiplicador_combo + 1) 
        Acionar_Revitalizacao_Visual(Recycle_Bin.posicao, raio=5.0) 
        Tocar_SFX("tilintar_sucesso")
    Senão
        // Depósito Incorreto: Punirá com perda de tempo e quebra de combo 
        Time_Manager.tempo_restante = Max(0.0, Time_Manager.tempo_restante - 8.0) 
        Hero_Eco.multiplicador_combo = 1
        Tocar_SFX("erro_descarte") 
    FimSe 
    Hero_Eco.quantidade_atual -= 1
FimPara 
Hero_Eco.mochila_inventario.Limpar() 
Emitir_Sinal_Atualizar_HUD()

```

*(Nota: Lógica estrutural de processamento replicada conforme documentação técnica).* 

Condições de Fim de Jogo (Vitória e Derrota) 

As condições limítrofes que determinam o encerramento do loop macro de jogo baseiam-se em equações lógicas diretas:

* 
**Condição de Vitória Dinâmica:** Ocorre no exato instante em que a contagem total de detritos instanciados no cenário atinge zero. Matematicamente expressa por:



$$\text{Contagem\_Trash\_Items\_No\_Mapa} == 0$$


contanto que $\text{Time\_Manager.tempo\_restante} > 0$. O sistema congela o cronômetro, exibe a tela de celebração, calcula o bônus de tempo convertido em estrelas pedagógicas e desbloqueia o nível subsequente no arquivo de salvamento.


* 
**Condição de Derrota (Game Over):** Disparada por uma interrupção de tempo exaurido. Matematicamente avaliada por:



$$\text{Time\_Manager.tempo\_restante} \le 0.0$$


O loop de gameplay é quebrado imediatamente, o script de controle desabilita a movimentação do `Hero_Eco`, as cores do mapa caem para escalas de cinza agressivas e a tela de rebatismo da fase é acionada, exibindo dicas pedagógicas de como organizar o lixo eficientemente para otimizar o tempo na próxima tentativa.



---

D. Anatomia da Interface e Fluxo Visual (Storyboard) 

Fluxograma de Sequência de Telas 

A interface de *Recicla City* prioriza a **Discernibilidade** e a acessibilidade cognitiva do público infantil (Rogers, Level 8). O fluxo de navegação do usuário foi estruturado em uma sequência linear e limpa, livre de fricção excessiva ou submenus complexos:

```
[TELA DE MENU] --(Toque em Iniciar)--> [SELEÇÃO DE NÍVEIS] --(Seleciona Fase)--> [CORE GAMEPLAY] 
                                                                                        |
                                                            (Tempo Esgotado) -> [TELA DE DERROTA]
                                                            (Tenta Novamente) -> [CORE GAMEPLAY]
                                                            (Limpeza 100%) -> [TELA DE VITÓRIA]

```

*(Representação textual simplificada do fluxograma original).* 

Mapeamento do HUD (Mobile e PC) 

O Head-Up Display (HUD) foi projetado para traduzir graficamente o estado das variáveis de controle em tempo real, sem poluir o campo visual da ação isométrica:

* 
**Canto Superior Esquerdo - Painel do Cronômetro:** Um display numérico estilizado como um relógio digital ecológico acoplado a uma barra circular de progresso (`TextureProgressBar`). A barra diminui em sentido anti-horário. Aplica-se uma regra de **Cor Dinâmica Reativa**: se $\text{tempo\_restante} > 30.0$, a cor é verde; entre $11.0$ e $30.0$ segundos, muda para amarelo; se $\text{tempo\_restante} \le 10.0$, a barra assume uma cor vermelha vibrante e inicia uma animação de escala (pulsação) sincronizada com um efeito somoro de batimento cardíaco acelerado.


* 
**Canto Superior Direito - Placar e Combo:** Exibição do score acumulado em texto grande com fonte arredondada de alta leitura. Logo abaixo, o multiplicador de combo aparece em uma caixa de diálogo dinâmica animada (ex: "Combo 3x!"), crescendo de tamanho a cada descarte correto seguido.


* 
**Canto Inferior Central - Indicador de Mochila (Inventário):** Uma representação visual horizontal dividida em exatamente 10 slots quadrados (ícones de caixas). À medida que o jogador coleta detritos, os slots são preenchidos sequencialmente com ícones em miniatura coloridos do tipo de lixo coletado (um pequeno símbolo de garrafa plástica para Plastico, etc.). Quando a contagem atinge 10/10, as bordas externas piscam com uma textura amarela e um sinal de aviso flutuante indica: "Mochila Cheia!". No PC, as teclas numéricas de 1 a 4 servem como atalhos para triagem manual; no Mobile, o jogador toca diretamente nos ícones das lixeiras seletivas projetadas na base central da interface.


![Mochila](../Imagens/Mockup_Mochila_com_lixos.png)

**Figura 1:** Interface Principal do Usuário (HUD) desenvolvida no Figma, otimizada para telas Mobile através de elementos expandidos de alta discernibilidade.



Acessibilidade Cognitiva e Feedback Visual 

* O sistema visual foi projetado utilizando formas geométricas arredondadas (*padrão cartoon*) para gerar empatia e legibilidade imediata com o público-alvo de 8 a 12 anos.


* A restrição de dados da mochila é espelhada em tempo real nos 10 compartimentos geométricos inferiores, mitigando a carga de memória de trabalho da criança durante a pressão temporal do jogo.



Feedback Sinestésico, Dinâmico e Diegético 

* A resposta sensorial do jogo foi desenhada para criar um ciclo de gratificação constante.


* O principal mecanismo sinestésico é o **Shader de Revitalização de Terreno (Dynamic Vertex Color Overlay)**. O mapa é dividido internamente em uma malha de quadrantes lógicos associados a um valor de pureza. Quando um detrito é retirado de uma coordenada, o script envia um comando que interpola linearmente (`lerp`) a textura daquele quadrante, removendo um filtro cinza opaco e revelando grama verdejante, flores brotando e pequenos riachos limpos em menos de 0.8 segundos.


* Adicionalmente, o motor de vibração de dispositivos mobile (*Haptic Feedback*) realiza uma microvibração sutil (15 milissegundos) no instante exato da coleta por aproximação, conferindo peso físico digital ao ato de recolher o lixo.



---

E. Arquitetura Tecnológica e de Dados 

Estrutura de Cenas e Hierarquia de Nodes (Godot 4) 

Para mitigar o acoplamento rígido de código e evitar que alterações na interface quebrem a lógica matemática das regras, o projeto adota o princípio de encapsulamento rígido da Godot 4. Cada elemento substancial do jogo é uma cena independente auto-contida.

```
MainLevel (Node2D) [Script: main_level.gd]
├── TimeManager (Timer) [Script: time_manager.gd]
├── MapGridIsom (TileMap) [Gerencia a navegação 2.5D e texturas]
├── SpawnPoints (Node2D) [Nós organizadores de posicionamento de lixo]
│   ├── Trash_Item_01 (Area2D) [Script: trash_item.gd]
│   └── Trash_Item_02 (Area2D)
├── BaseReciclagem (Node2D)
│   ├── Bin_Plastico (StaticBody2D) [Script: recycle_bin.gd]
│   ├── Bin_Papel (StaticBody2D)
│   ├── Bin_Vidro (StaticBody2D)
│   └── Bin_Metal (StaticBody2D)
├── Player_Hero (CharacterBody2D) [Script: player_controller.gd]
│   ├── Sprite2D (AnimatedSprite2D) [Animações Cartoon de caminhada/coleta]
│   ├── CollisionShape2D (CollisionShape2D) [Colisão física com o cenário]
│   └── CollectionArea (Area2D) [Raio de detecção de aproximação de detritos]
└── HUD_Canvas (CanvasLayer) [Script: hud_manager.gd]
    ├── ControlContainer (Control)
    │   ├── ProgressBar_Tempo (TextureProgressBar)
    │   ├── Label_Score (Label)
    │   └── Grid_Mochila (HBoxContainer com 10 TextureRects)
    └── SoundPlayer (AudioStreamPlayer) [Gerenciador de canais SFX/Música]

```

*(Estrutura de árvore unificada conforme hierarquia descrita no documento).* 

Comunicação Desacoplada Baseada em Eventos (Signals) 

* Em vez de usar referências diretas que cruzam a hierarquia de nós (como `get_node("../../")`), o sistema trafega informações exclusivamente através de sinais arquitetados (*Signals*).


* O script `player_controller.gd` gerencia a mochila localmente e dispara eventos globais quando seu estado é alterado. Por exemplo, ao entrar na área de influência de um lixo, o nó `CollectionArea` captura a colisão e emite internamente o sinal `_on_area_entered(body)`.


* O jogador insere o item no Array de dados e emite o sinal personalizado: `signal mochila_alterada(quantidade_atual, lista_itens)`.


* O nó `HUD_Canvas`, que está previamente conectado a esse sinal no carregamento da cena (`ready()`), captura a nova lista de itens e atualiza os quadrados do inventário visual imediatamente.


* Da mesma forma, quando um descarte ocorre nas lixeiras, a cena `RecycleBin` emite o sinal `signal acerto_reciclagem(tipo, bonus_tempo)`.


* O nó `TimeManager` escuta este evento e adiciona os segundos diretamente na sua variável `tempo_restante`, enquanto o `MapGridIsom` escuta o mesmo evento para disparar as partículas e Shaders de revitalização de plantas daquele quadrante específico.


* Essa arquitetura limpa garante modularidade completa: é possível alterar toda a arte do HUD ou o comportamento do mapa sem alterar uma única linha de código do controle do jogador.



---

F. Cronograma de Produção (Backlog de 30 Dias) 

Divisão de Papéis da Guilda 

O desenvolvimento do protótipo digital de *Recicla City: Missão Limpeza* será executado ao longo de 4 semanas (30 dias úteis), distribuindo as responsabilidades técnicas conforme as aptidões natas dos perfis clássicos da guilda acadêmica (Fullerton, Cap. 15):

* 
**Ferreiro / Alquimista (Kensley A. Oliveira):** Engenharia de Software, programação dos sistemas matemáticos centrais, lógicas dos algoritmos de aproximação, regras do inventário LIFO, lógica do cronômetro regressivo e integração de cenas na Godot 4.


* 
**Mago / Bardo (Pedro Paulo Cunha e Tatiana):** Design de Interface (IHC), desenho dos wireframes do HUD móvel, criação e aplicação de Shaders de terreno, exportação de assets 3D/2D *cartoon*, edição e implementação de canais de áudio e sonorização (SFX de pop/tilintar e loops de Lofi).


* 
**Patrulheiro / Clérigo (Thomaz Otávio e suporte de toda a guilda):** Game Design conceitual, escrita dos arcos de storytelling e diálogos do robô de sucata, arquitetura do balanceamento das variáveis (fórmulas de ganho/perda de tempo) e execução das sessões de Playtesting e Quality Assurance (QA).



Entregáveis Semanais do Cronograma 

| Fase | Temporal | Foco Estratégico | Responsável Técnico | Tarefas Detalhadas do Backlog (Prontas para Execução) |
| --- | --- | --- | --- | --- |
| **Semana 1** | Dias 1 a 7 | Validação Analógica e Arquitetura Base | Patrulheiro, Ferreiro, Alquimista, Mago | Montagem de um protótipo físico de papel com tabuleiro e 10 marcadores físicos de lixo para testar o atrito da mochila limitada e o estresse temporal. Configuração inicial do repositório Git (GitHub), criação do projeto em Godot 4 e setup da câmera isométrica fixa. Escrita do script estrutural do mapa lógico (`map_grid.gd`) para gerenciar as coordenadas geográficas de spawn de itens. Desenho dos esquemas visuais estáticos (Mockups) do HUD no Figma para validação de discernibilidade infantil. 

 |
| **Semana 2** | Dias 8 a 15 | Core Gameplay Digital e Greyboxing | Ferreiro, Alquimista, Mago, Clérigo | Codificação dos scripts de movimentação do `Player_Hero` (toque/clique) e mapeamento da área de colisão por aproximação. Desenvolvimento do sistema lógico do inventário de Array limitado a 10 slots com funções de push e pop. Criação de blocos cinzas tridimensionais (Greyboxing) na engine para testar o tempo de deslocamento do jogador do canto do mapa até a base. Execução de Testes de Fumaça (*Smoke Tests*) para certificar que o estouro do Array (item 11) bloqueia firmemente novas coletas. 

 |
| **Semana 3** | Dias 16 a 22 | Integração IHC, Storytelling e Assets | Mago, Bardo, Patrulheiro, Ferreiro | Programação visual do HUD na Godot usando nós Control, conectando a `TextureProgressBar` ao sinal do cronômetro. Implementação do Shader de revitalização de bioma e inserção prática dos arquivos de som (.WAV/.MP3) nos gatilhos de eventos. Inserção das caixas de diálogo do tutorial do Robô de Sucata e distribuição espacial equilibrada dos tipos de detritos na fase da Praia. Refatoração da comunicação de nós substituindo chamadas diretas por Signals nativos para limpar o console de erros. 

 |
| **Semana 4** | Dias 23 a 30 | Playtesting, Balanceamento e Build | Clérigo, Patrulheiro, Ferreiro, Toda a Guilda | Condução de sessões de Playtesting de laboratório com usuários externos usando a metodologia de Observação Passiva (Sem Intervenção). Ajuste das penalidades matemáticas de tempo (de -5s para -8s) com base no feedback dos testes para evitar que o jogo fique fácil demais. Correção de bugs de concorrência de sinais e compilação das builds executáveis estáveis para PC (Windows) e Mobile (Android .APK). Revisão final textual do Game Design Document, tabulação do apêndice de ferramentas e exportação do arquivo PDF definitivo. 

 |

---

Apêndice: Transparência e Uso de IA Generativa 

Em estrita conformidade com as diretrizes acadêmicas, a guilda documenta nesta seção o uso de Modelos de Linguagem de Grande Escala (LLMs) como suporte exclusivo para refinamento de texto técnico e brainstorming estrutural:

| ID | Prompt Fornecido pela Guilda (Input) | Resposta do Modelo Utilizado (Output Adaptado) | Finalidade e Aplicação no GDD |
| --- | --- | --- | --- |
| **01** | "Como posso estruturar matematicamente em pseudocódigo um loop de descarte em lixeiras seletivas usando estrutura LIFO para um jogo na engine Godot 4?" | Forneceu a lógica sequencial de leitura de um array invertido, aplicando condicionais de validação de strings de material (tipo_lixo == tipo_lixeira) com adição de bônus de tempo. | Utilizado como fundação técnica para detalhar o algoritmo de validação seletiva da Seção C.3. 

 |
| **02** | "Sugira formas de feedback visual e sonoro sinestésico adequados para engajar crianças de 8 a 12 anos em jogos de reciclagem sem pausar a jogabilidade." | Recomendou o uso de shaders de revitalização dinâmica de cores no terreno (transformação cinza para colorido) e SFX curtos e agudos do tipo 'pop' para liberação imediata de dopamina. | Incorporado nas definições da meta de experiência (Seção A.4) e na anatomia de interface (Seção D.3). 

 |