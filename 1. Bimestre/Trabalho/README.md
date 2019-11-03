# DESENVOLVA UM SCRIPT PARA CONSULTAR INFORMAÇÕES SOBRE A CONTA BANCÁRIA DE UM CLIENTE.

#### Nome do Script: bank_script.sh
#### E-mail do professor: leandersonandre@univille.com.br

## PRIMEIRA PARTE

1.	Os dados dos usuários deverá ser baixado da internet.
2.	Primeiramente, deverá ser baixado o arquivo lista_usuarios.txt.
3.	Nesse arquivo contem os usuários cadastrados no sistema.
4.	Caso o nome do usuário não existe na lista, deve ser informado que usuário não foi encontrado.
Exemplo de como deve ser feito a primeira parte:
$ Informe seu usuário: james

$ Buscando informações…

$ Usuário james não encontrado.


## SEGUNDA PARTE

1.	Caso seja encontrado na lista, deve-se baixar o arquivo com os dados do usuário. O arquivo se chama <nomeusuario>.tar.
2.	O arquivo está compactado no formato tar. 
3.	Uma vez baixado os dados, deve-se extrair os arquivos. Os arquivos são: saldo.txt e extrato.txt.
4.	Deve-se criar um menu com opções de saldo, extrato e sair
#### Exemplo de como deve ser feito a segunda parte:

$ Informe seu usuário: james

$ Buscando informações…

$ Usuário encontrado.

$ Baixando dados do usuário…

$ Download completo

$ Selecione uma opção:

  $ 1. Ver Saldo

  $ 2. Ver Extrato

  $ 3. Sair

$ Digite sua opção:

## TERCEIRA PARTE

1.	Ao selecionar as opções 1 ou 2, deve ser mostrado o conteúdo do
Arquivo.
#### Exemplo de como deve ser feito a terceira parte:

$ Digite sua opção: 1

$ Saldo R$ 1456.00

###### OU

$ Digite sua opção: 2

  $ + 1789.34
  
  $ - 34.34
  
  $ + 323.2
  
  $ - 3434.3

## ULTIMA PARTE

1.	Ao selecionar a opção 3, os arquivos baixados e extraídos devem ser excluídos.
##### Exemplo de como deve ser feito a ultima parte:
 
$ Digite sua opção: 3

$ Excluindo arquivos…

$ Obg, volte sempre

$ Bank Shell
 

## Link dos arquivos:
https://raw.githubusercontent.com/leandersonandre/shell-script/master/lista_usuarios.txt
https://github.com/leandersonandre/shell-script/blob/master/lisbon.tar.gz?raw=true
https://github.com/leandersonandre/shell-script/blob/master/newyork.tar.gz?raw=true
https://github.com/leandersonandre/shell-script/blob/master/london.tar.gz?raw=true
https://github.com/leandersonandre/shell-script/blob/master/lisbon.tar.gz?raw=true
