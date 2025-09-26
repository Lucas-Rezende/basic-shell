#!/bin/bash

SHELL_EXECUTABLE="./sh"

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

run_test() {
    COMMAND=$1
    DESCRIPTION=$2
    
    echo -e "${YELLOW}--- Testando: $DESCRIPTION ---${NC}"
    echo "Executando o comando: '$COMMAND'"
    echo "--- Saída do seu Shell: ---"
    
    echo "$COMMAND" | $SHELL_EXECUTABLE
    
    echo "----------------------------"
    echo ""
    sleep 1
}

# --- TESTES ---
echo -e "${GREEN}=====================================${NC}"
echo -e "${GREEN}                TESTES               ${NC}"
echo -e "${GREEN}=====================================${NC}"
echo ""

# Teste 1: Comando simples sem argumentos
run_test "ls" "Comando simples (ls)"

# Teste 2: Comando com um argumento
run_test "echo Teste de argumentos"

# Teste 3: Comando com múltiplos argumentos (flags)
run_test "ls -l -a"

# Teste 4
run_test "pwd"

# Teste 5
run_test "mkdir pastapraserdeletada"

# Teste 6
run_test "rmdir pastapraserdeletada"

# Teste 7: Comando que não existe (teste de erro)
run_test "comandoinexistentequedevedarerrado"

echo -e "${GREEN}=====================================${NC}"
echo -e "${GREEN}Testes finalizados!${NC}"
echo -e "${GREEN}=====================================${NC}"