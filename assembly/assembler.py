def create_inst_bin(idx, opcode, RA, RB, RC, value):
    return f'tmp({idx}) := "{opcode}" & "{RA}" & "{RB}" & "{RC}" & "{value:08b}";'

opcodes = {
    "LOAD" : "0001",
    "ADD" :  "0010",
    "SUB" :  "0011",
    "JE" :   "0100",	 
    "JMP" :  "0101",
    "STORE" :"0110", 
	"MOVI": "0111",
    "CMP":  "1000"
}

regs = {
    "R_US": "0001",
    "R_DS": "0010",
    "R_UM": "0011",
    "R_DM": "0100",
    "R_UH": "0101",
    "R_DH": "0110",
    "R_ADD1": "0111",
    "R_CMP": "1000",
    "R_10": "1001",
    "R_60": "1010",
    "R_20": "1011",
    "R_24": "1100",
    "R_BT1": "1101",
    "R_BT2": "1110",
    "R_BT3": "1111",
    "R_0": "0000",
}

file_name = str("teste.asm")
output_file = str("out.txt")

line_number = 0
with open(file_name, "r") as f:
    labels = {}
    lines = f.readlines()
    for line in lines:
        args = line.replace(",", "").replace("\n", "").replace(":", "").replace("$", "").split(" ")
        opcode = opcodes.get(args[0], False)
        if not opcode:
            labels[args[0]] = line_number
            continue
        line_number += 1
    print("\n".join(labels))

    insts = []
    for line in lines:
        args = line.replace(",", "").replace("\n", "").replace(":", "").replace("$", "").split(" ")
        opcode = opcodes.get(args[0], False)
        if opcode == False:
            insts.append("pulinho")
        else:
            insts.append(args)
    # print(insts)

    insts_bin = []
    idx = 0
    for inst in insts:
        # print(inst)
        if inst == "pulinho":
            insts_bin.append("-- LABEL_X")
            continue
        elif inst[0] not in opcodes:
            print(f"Error! Could not find this opcode! {inst[0]}")
            exit(1)
        else:
            opcode = inst[0]

        if opcode == "LOAD":
            inst_bin = create_inst_bin(idx, opcodes.get(opcode), "0000", "0000", regs.get(inst[1]), int(inst[2]))
            insts_bin.append(inst_bin)
        elif opcode == "MOVI":
            inst_bin = create_inst_bin(idx, opcodes.get(opcode), "0000", "0000", regs.get(inst[1]), int(inst[2]))
            insts_bin.append(inst_bin)
        elif opcode == "ADD" or opcode == "SUB":
            inst_bin = create_inst_bin(idx, opcodes.get(opcode), regs.get(inst[1]), regs.get(inst[2]), regs.get(inst[3]), int(0))
            insts_bin.append(inst_bin)
        elif opcode == "JMP" or opcode == "JE":
            inst_bin = create_inst_bin(idx, opcodes.get(opcode), "0000", "0000", "0000", int(labels.get(inst[-1])))
            insts_bin.append(inst_bin)
        elif opcode == "STORE":
            inst_bin = create_inst_bin(idx, opcodes.get(opcode), regs.get(inst[2]), "0000", "0000", int(inst[1]))
            insts_bin.append(inst_bin)
        elif opcode == "CMP":
            inst_bin = create_inst_bin(idx, opcodes.get(opcode), regs.get(inst[1]), regs.get(inst[2]), "0000", int(0))
            insts_bin.append(inst_bin)
        else:
            print(f"Nao entendi: {opcode}")

        idx += 1

with open(output_file, 'w') as filehandle:
    for listitem in insts_bin:
        filehandle.write(f"{listitem}\n")
