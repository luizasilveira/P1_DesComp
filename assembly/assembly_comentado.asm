; inicializando o relógio zerado
MOVI R_US, $0
MOVI R_DS, $0
MOVI R_UM, $0
MOVI R_DM, $0
MOVI R_UH, $0
MOVI R_DH, $0

; movendo alguns valores fixos para alguns registradores
MOVI R_ADD1, $1
MOVI R_0, $0

; loop principal: passagem de tempo
loop:
LOAD R_CMP, $14
CMP R_CMP, R_ADD1
JE passou_um_segundo
JMP loop

; quando passado 1 segundo (cada subida de clock)
passou_um_segundo:
LOAD R_CMP, $15

; definição de registrador para os botões
LOAD R_BT, $24

; verificando se o botão 0 é apertado
MOVI R_IM, $1
CMP R_BT, R_IM
JE apertou_botao1

; verificando se o botão 1 é apertado
MOVI R_IM, $2
CMP R_BT, R_IM
JE apertou_botao2

; verificando se o botão 2 é apertado
MOVI R_IM, $4
CMP R_BT, R_IM
JE apertou_botao3

; continuando quando passado 1 segundo
ADD R_US, R_ADD1, R_US
MOVI R_IM, $10
CMP R_IM, R_US
JE passou_10_segundos
JMP atualiza

; quando passados 10 segundos
passou_10_segundos:
MOVI R_US, $0
ADD R_DS, R_ADD1, R_DS
MOVI R_IM, $6
CMP R_IM, R_DS
JE passou_60_segundos
JMP atualiza

; quando passado 1 minuto
passou_60_segundos:
MOVI R_DS, $0
; redirecionamento para lógica do botão 1 se apertado
apertou_botao2:
ADD R_UM, R_ADD1, R_UM
MOVI R_IM, $10
CMP R_IM, R_UM
JE passou_10_minutos
JMP atualiza

; quando passados 10 minutos
passou_10_minutos:
MOVI R_UM, $0
ADD R_DM, R_ADD1, R_DM
MOVI R_IM, $6
CMP R_IM, R_DM
JE passou_60_minutos
JMP atualiza

; quando passada 1 hora
passou_60_minutos:
MOVI R_DM, $0
; redirecionamento para lógica do botão 2 se apertado
apertou_botao3:
ADD R_UH, R_ADD1, R_UH
MOVI R_IM, $4
; verifica se a unidade de hora tem valor 4
CMP R_IM, R_UH
JE passou_24_horas
compara_10uni_hora:
MOVI R_IM, $10
CMP R_IM, R_UH
JE passou_10_horas
JMP atualiza

; quando passadas 10 horas
passou_10_horas:
MOVI R_UH, $0
ADD R_DH, R_ADD1, R_DH
MOVI R_IM, $2
CMP R_IM, R_DH
JE passou_20_horas
JMP atualiza

; quando passadas 20 horas
passou_20_horas:
MOVI R_UH, $0
JMP atualiza

; quando passadas 24 horas
passou_24_horas:
MOVI R_IM, $2
CMP R_IM, R_DH
JE recomeca
JMP compara_10uni_hora
; virada de dia
recomeca:
MOVI R_UH, $0
MOVI R_DH, $0
JMP atualiza

; redirecionamento para lógica do botão 0 se apertado
apertou_botao1:
MOVI R_US, $0
MOVI R_DS, $0
MOVI R_UM, $0
MOVI R_DM, $0
MOVI R_UH, $0
MOVI R_DH, $0

; atualização do display de sete segmentos
atualiza:
STORE $64, R_US
STORE $65, R_DS
STORE $66, R_UM 
STORE $67, R_DM
STORE $68, R_UH 
STORE $69, R_DH

; volta para o loop principal
JMP loop