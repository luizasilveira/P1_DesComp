# Projeto 1: Relógio Utilizando um Processador Personalizado
Beatriz Mie Kotsubo Kuwabara, Gabriela Iannini Caruso e Luiza Rodrigues Silveira


*Arquitetura do processador*

A arquitetura registrador-registrador ou load-store comporta operações que ocorrem somente entre registradores, e os valores para esses registradores devem ser carregados da memória (ou imediato) através de uma instrução específica (instrução de carga, load) e o resultado é armazenado em um registrador definido e pode ser guardado na memória usando uma instrução específica (instrução de armazenamento, store).

Essa arquitetura apresenta um hardware mais complexo de ser implementado, porém um software mais simples, código mais enxuto, ou seja, com uma densidade maior, razão pela qual optamos por utilizar essa arquitetura nesse projeto.


*Total de instruções e sua sintaxe*

Carrega conteúdo da memória para um registrador:
0001 : LOAD RC, M[X]

Soma o conteúdo de dois registradores e o resultado armazenado em um terceiro registrador:
0010 : ADD  RA, RB, RC 

Subtrai o conteúdo de dois registradores e o resultado armazenado em um terceiro registrador (utilizado no cronômetro):
0011 : SUB RA, RB, RC 

Verifica se o conteúdo de um registrador (RA) é igual ao de outro (RB) e pula para um endereço:
0100 : JE imediato

Pula para um endereço:
0101 : JMP imediato

Armazena conteúdo de um registrador na memória:
0110 : STORE M[X], RA

Carrega conteúdo do imediato para um registrador:
0111 : MOVI RC, imediato

Compara o conteúdo de dois registradores:
1000 : CMP RA, RB 


*Fluxo de dados para o processador*

Para a etapa de busca, o fetch da instrução é feito pelo Program Counter (PC) com um somador que sempre adiciona o valor 1 ao endereço da memória. Esse novo valor passa pelo MUX e chega novamente no PC, o qual só vai ser atualizado na próxima subida do Clock. Dessa forma, a instrução é armazenada na memória ROM.

Depois, o dado da instrução é separado de modo que os bits de OpCode [23~20] são enviados de volta para a Unidade de Controle; os bits de endereços dos registradores RA [19~16], RB [15~12] e RC [11~8] são passados para os registradores, sendo que eles somente serão escritos nos  registradores se a flag habilitaEscritaRegistrador que sai da Unidade de Controle estiver setada em 1; já os bits do valor imediato [0~7] são as entradas do MUX, o qual seleciona tal valor para ser guardado no registrador se a flag mux(Imediato/RAM) estiver habilitada, senão, utiliza um valor guardado na RAM. 

Na arquitetura registrador-registrador, as operações são feitas somente entre registradores, e, portanto, as entradas da ULA recebem os valores dos registradores para fazer as operações. No diagrama, utilizamos os registradores RA e RB como entradas da ULA, e, de acordo com a operação definida pela Unidade de Controle, guarda esse resultado em RC se a flag mux(ULA/Imediato_RAM) estiver habilitada, senão, guarda o valor de saída do mux(Imediato/RAM). 

Dessa forma, para acessar a memória de dados e poder carregar valores imediatos, é necessário fazer um LOAD. E, ao contrário, para guardar o resultado de uma operação na memória, é necessário fazer uma instrução de STORE. Então, se quisermos guardar na memória uma soma de um valor X de um registrador RX com um valor absoluto 1, por exemplo, precisamos fazer um LOAD do valor 1 para um novo registrador R1, fazer uma operação de ADD RX, R1 para salvar o valor da soma no registrador RX, e, por fim, fazer uma instrução de STORE do valor guardado em RX para a memória de dados, atentando sempre para os comandos da unidade de controle.

Para executar uma instrução de comparação ou jump, devemos fazer uma operação de subtração na ULA e verificar se o resultado foi 0, se o resultado for verdadeiro, a saída “zero” da ULA terá valor 1, e caso seja falso, terá valor 0. Esse valor passa pelo flip flop - o qual só é habilitado se a flag habFlipFlop for igual a 1 - e, com esse valor, fazemos a operação “jump OR (jumpCompare AND zero)”, se o resultado for 1, o mux recebe então, o valor do imediato. 

Para o processador em si, temos como entrada de dados o dataIn e o clock, e como saída o dataOut, o endereço da memória ROM e as flags habLeituraMEM, habEscritaMEM e habEscritaReg, que habilitam leitura e escrita na ROM e escrita em um registrador respectivamente, como ilustrado na imagem:


*Listagem dos pontos de controle e sua utilização*

jump: quando habilitado, executa o jump
jumpCompare: quando habilitado, executa a comparação.
inst(opcode): opcode da instrução a ser  executada
sel_mux_2: em 0, seleciona a entrada A e em 1 seleciona a entrada B do mux. 
sel_mux_ula: em 0, seleciona a entrada A e em 1 seleciona a entrada B do mux. 
habilitaEscReg: permite escrever no registrador.
operação: em 10, executa na ULA a operação de subtração e em 01 de adição..
habilitaLeituraMEM: permite ler a memória.
habilitaEscritaMEM: permite escrever na memória.


*Rascunho do mapa de memória*

Bloco 1 (0 até 63) - Leitura:
E0 (0 até 9) : Chaves (Switches)
E1 (10 até 13) : Botões
E2 (14 até 14) : Base de Tempo

Bloco 2 (64 até 127) - Escrita:
E3 (64 até 69) : Display de sete segmentos (Hexadecimal)
E4 (70 até 70) : LEDs

Bloco 3 (128 até 191) - RAM:
E5 (128 até 191) : Memória RAM

Bloco 4 (192 até 255) - Reservado:
E6 (192 até 255) : Reservado
