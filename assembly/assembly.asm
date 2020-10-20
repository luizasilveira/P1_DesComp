MOVI R_US, $0
MOVI R_DS, $0
MOVI R_UM, $0
MOVI R_DM, $0
MOVI R_UH, $0
MOVI R_DH, $0
MOVI R_ADD1, $1
MOVI R_10, $10
MOVI R_60, $6
MOVI R_20, $2
MOVI R_24, $4
LOAD R_CMP, $15
loop:
LOAD R_CMP, $14
CMP R_CMP, R_ADD1
JE passou_um_segundo
JMP loop
passou_um_segundo:
LOAD R_CMP, $15
ADD R_US, R_ADD1, R_US
CMP R_10, R_US
JE passou_10_segundos
JMP atualiza
passou_10_segundos:
MOVI R_US, $0
ADD R_DS, R_ADD1, R_DS
CMP R_60, R_DS
JE passou_60_segundos
JMP atualiza
passou_60_segundos:
MOVI R_DS, $0
ADD R_UM, R_ADD1, R_UM
CMP R_10, R_UM
JE passou_10_minutos
JMP atualiza
passou_10_minutos:
MOVI R_UM, $0
ADD R_DM, R_ADD1, R_DM
CMP R_60, R_DM
JE passou_60_minutos
JMP atualiza
passou_60_minutos:
MOVI R_DM, $0
ADD R_UH, R_ADD1, R_UH
CMP R_24, R_UH
JE passou_24_horas
compara_10uni_hora:
CMP R_10, R_UH
JE passou_10_horas
JMP atualiza
passou_10_horas:
MOVI R_UH, $0
ADD R_DH, R_ADD1, R_DH
CMP R_20, R_DH
JE passou_20_horas
JMP atualiza
passou_20_horas:
MOVI R_UH, $0
JMP atualiza
passou_24_horas:
CMP R_20, R_DH
JE recomeca
JMP compara_10uni_hora
recomeca:
MOVI R_UH, $0
MOVI R_DH, $0
atualiza:
STORE $64, R_US
STORE $65, R_DS
STORE $66, R_UM 
STORE $67, R_DM
STORE $68, R_UH 
STORE $69, R_DH
JMP loop