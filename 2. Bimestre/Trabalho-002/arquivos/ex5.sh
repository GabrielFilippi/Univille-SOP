i
#!/usr/bash
echo "MENU"
echo "=================================="
echo "1- Calend�rio"
echo "2- Lista de arquivos diret�rio"
echo "=================================="
echo "Digite a op��o desejada"
read opcao
if [ $opcao = 1 ]; then
echo "Calendario:"
cal
elif [ $opcao = 2 ]; then
echo "Listagem de arquivos:"
ls
else
echo "Opcao inexistente, Tente novamente!"
fi
