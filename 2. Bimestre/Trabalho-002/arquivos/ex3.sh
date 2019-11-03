i
#!/usr/bash
echo "Digite um numero"
read number
if [ $number = 0 ]; then
echo "seu numero é zero"
elif [ $number -lt 0 ]; then
echo "numero negativo"
else
echo "numero positivo"
fi
