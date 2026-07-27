# RECICLA CITY: MISSÃO LIMPEZA - CHECKLIST DE VERIFICAÇÃO DO GDD

**Legenda:**
*   `[X]` Implementado e verificável no protótipo
*   `[~]` Implementado parcialmente ou precisa de evidência/documentação
*   `[ ]` Pendente

---

## 1. Visão Geral e Core Loop
*   `[X]` Exploração de mapa isométrico.
*   `[X]` Coleta automática por proximidade.
*   `[X]` Mochila com capacidade limitada.
*   `[X]` Retorno aos postos de reciclagem.
*   `[X]` Separação por material, cor, letra e nome.
*   `[X]` Cronômetro regressivo.
*   `[X]` Pontuação e multiplicador de combo.
*   `[X]` Revitalização progressiva do ambiente.
*   `[X]` Condição de vitória e desbloqueio da fase seguinte.
*   `[X]` Condição de derrota por tempo esgotado.

## 2. Interação Lúdica e Entradas
*   `[X]` Controle por teclado: setas e WASD.
*   `[X]` Controle por mouse com busca de caminho.
*   `[X]` Botões direcionais para telas de toque.
*   `[X]` Feedback imediato para coleta.
*   `[X]` Feedback para mochila cheia.
*   `[X]` Feedback para descarte correto e incorreto.
*   `[X]` Confirmação antes de reiniciar ou sair.
*   `[X]` Pausa interrompe tempo, vento, aceleração e música; retorno pelo botão ou Esc.
*   `[~]` Swipes gestuais não foram implementados; mobile usa botões na tela.

## 3. Flow e Calibração
*   `[X]` Tempos diferentes por fase.
*   `[X]` Quantidades diferentes de resíduos.
*   `[X]` Dificuldade crescente.
*   `[X]` Bônus de aceleração.
*   `[X]` Mochila expansível na fase 3.
*   `[X]` Modo assistência depois de três derrotas.
*   `[X]` Menos resíduos, mais tempo e menos obstáculos no modo assistência.
*   `[~]` Necessário documentar testes com jogadores reais e resultados de Flow.
*   `[ ]` Registrar tempo médio, derrotas, erros de descarte e satisfação por fase.

## 4. Estética e Revitalização
*   `[X]` Arte isométrica em Canvas.
*   `[X]` Personagem, mochila, resíduos e lixeiras diferenciados.
*   `[X]` Bancos, flores, pedras, cones e guarda-sóis.
*   `[X]` Transformação visual durante a coleta.
*   `[X]` Árvores e flores surgem na conclusão.
*   `[X]` Praia muda de cinza para areia amarela e água azul.
*   `[X]` Resultado aparece sobre o próprio mapa revitalizado.
*   `[~]` Sprites e animações profissionais podem ser adicionados em uma versão futura.

## 5. Áudio e Sonoplastia
*   `[X]` Som pop de coleta.
*   `[X]` Carrilhão para acerto e bônus.
*   `[X]` Som grave para erro e mochila cheia.
*   `[X]` Música diferente em cada fase.
*   `[X]` Ritmo próprio durante a aceleração.
*   `[X]` Ritmo de urgência progressivo nos últimos 20 segundos.
*   `[X]` Avisos sonoros nos três segundos finais da aceleração.
*   `[~]` Músicas são sintetizadas; ainda não existe trilha Lofi/Jazz produzida e masterizada.

## 6. Storytelling e UX
*   `[X]` Tela de abertura contextual.
*   `[X]` Objetivo e core loop apresentados na introdução.
*   `[X]` Tutorial ilustrado antes de cada fase.
*   `[X]` Novas regras apresentadas conforme a progressão.
*   `[X]` HUD com tempo, progresso, pontuação, combo, mochila e estados.
*   `[X]` Narrativa ambiental ligada à revitalização.
*   `[X]` Página e rodapé de créditos.
*   `[X]` Aviso de mudança dos controles na água.
*   `[~]` Mascote robô de sucata descrito no GDD ainda não aparece no protótipo.

## 7. Conteúdo das Fases
*   `[X]` Fase 1 - Praça Escola: fundamentos, 12 resíduos, papel, metal/latas e plástico.
*   `[X]` Fase 2 - Parque Central: quatro categorias clássicas, bancos, flores e aceleração.
*   `[X]` Fase 3 - Cidade Ventosa: vento, cones, papel/plástico móveis e mochila extra.
*   `[X]` Fase 4 - Praia Limpa: areia, água, correnteza, garrafas e revitalização amarela.
*   `[~]` O GDD original descreve três atos; precisa ser atualizado para quatro fases.

## 8. Arquitetura e Tecnologia
*   `[X]` Protótipo funcional em HTML5, CSS, JavaScript, Canvas e Web Audio API.
*   `[X]` Execução local sem internet.
*   `[X]` Pacote ZIP com HTML, assets, instruções e iniciador para macOS.
*   `[~]` O código funciona, mas permanece concentrado em um HTML; pode ser modularizado.
*   `[~]` O GDD ainda cita Godot 4 e deve registrar formalmente a mudança para HTML.
*   `[ ]` APK Android não gerado.
*   `[ ]` Executável nativo Windows não gerado.
*   `[ ]` PWA instalável não gerada.

## 9. Estabilidade e QA
*   `[X]` Validação de sintaxe JavaScript.
*   `[X]` Verificação de acessibilidade dos caminhos e lixeiras.
*   `[X]` Resíduos gerados somente em casas alcançáveis.
*   `[X]` Pacote ZIP testado contra corrupção.
*   `[~]` Necessários testes formais em Chrome, Edge, Firefox e Safari.
*   `[~]` Necessários testes em Android, iPhone, tablet e diferentes resoluções.
*   `[ ]` Relatório de bugs, casos de teste e evidências de QA.

## 10. Versionamento e Entrega
*   `[X]` Código-fonte e scripts incluídos no pacote.
*   `[X]` Protótipo HTML funcional e pacote executável para macOS.
*   `[ ]` Link público do repositório Git.
*   `[ ]` Histórico de commits de todos os integrantes.
*   `[ ]` Link público jogável, como GitHub Pages ou itch.io.
*   `[ ]` Tag/release final, por exemplo v1.0-demo.
*   `[ ]` Relatório PDF final do desenvolvimento.

## 11. Participação da Guilda
*   `[X]` Nomes dos integrantes apresentados nos créditos.
*   `[ ]` Registrar responsável por programação, arte, áudio, testes e documentação.
*   `[ ]` Registrar presenças nos laboratórios de terça-feira.
*   `[ ]` Registrar representantes e avanços das reuniões de quarta-feira.
*   `[ ]` Relacionar commits, tarefas e entregas a cada integrante.

## 12. Informações que devem ser atualizadas no GDD
*   `[ ]` Substituir ou complementar Godot 4 por HTML5/Canvas/Web Audio.
*   `[ ]` Atualizar a arquitetura de Nodes/Signals para a arquitetura JavaScript atual.
*   `[ ]` Atualizar três atos para quatro fases.
*   `[X]` Manter as quatro categorias clássicas do GDD: papel, plástico, vidro e metal/latas.
*   `[ ]` Incluir controles por mouse e botões mobile.
*   `[ ]` Incluir aceleração, vento, mochila extra, correnteza e modo assistência.
*   `[ ]` Atualizar tempos e quantidades de resíduos.
*   `[ ]` Incluir página de créditos, tutoriais e encerramento sobre o mapa revitalizado.

---

### Configuração Atual das Fases
*   **Fase 1:** 170 segundos — 12 resíduos *(média observada: 136 s)*.
*   **Fase 2:** 190 segundos — 14 resíduos *(média observada: 152,8 s)*.
*   **Fase 3:** 185 segundos — 18 resíduos *(média observada: 149,6 s)*.
*   **Fase 4:** 135 segundos — 20 resíduos *(média observada: 102 s)*.

`[X]` **Facilitador adaptativo:** Depois de duas derrotas, a terceira tentativa oferece 35% mais tempo, mochila maior, quatro resíduos a menos e menos obstáculos.

> 💡 **Onde alterar:** Abra o arquivo `index.html`, procure por `"TEMPO DAS FASES"` e edite os valores de `"time"`.
