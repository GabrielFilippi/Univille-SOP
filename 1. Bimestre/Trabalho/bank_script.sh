#!/usr/bash
wget https://raw.githubusercontent.com/leandersonandre/shell-script/master/lista_usuarios.txt -o lista_usuarios.txt

echo "Informe seu nome"
read nome
#aqui tenho que procurar o nome informado dentro da lista e fazer a condicao abaixo:
#output=$(grep $nome lista_usuarios.txt.1)
output=$(`cat lista_usuarios.txt.1 | grep $nome | wc -l`)

echo "Buscando informacoes..."
if [ $output ]; then
	echo "Usuario encontrado. Coletando dados, aguarde!"

	wget "https://github.com/leandersonandre/shell-script/blob/master/"$nome".tar.gz?raw=true" -o $nome
	tar -xvf $nome".tar.gz?raw=true"
	opcao=0
	while [ $opcao -ne 3 ]; do
		echo "Dados coletado com sucesso!"
		echo "============= MENU ============="
		echo "1. Ver Saldo"
		echo "2. Ver Extrato"
		echo "3. Sair"
		echo "================================"
		echo "Digite a opcao desejada"
		read opcao

		if [ $opcao -eq 1 ]; then
			#mostra o saldo bancario
			saldo=$(cat $nome"/saldo.txt")
			echo "Seu saldo: $saldo"
		elif [ $opcao -eq 2 ]; then
			echo "EXTRATO"
			#mostra o extrato bancario
			extratos=$(cat $nome"/extrato.txt")
			echo "Seu extrato:"
			echo $extratos
		else
			echo "Excluindo arquivos"
			# exclui os aquivos baixados do cliente e tbm a lista de usuarios.
			rm lista_usuarios.txt
			rm lista_usuarios.txt.1
			rm "$nome.tar.gz?raw=true"
			rm -rf london
			echo "Volte Sempre"
		fi
	done
else
	echo "Usuario informado não existe!"
fi
