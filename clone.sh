#/bin/bash
if [[ (-z "$1") || (-z "$2") ]] 
then
    exit 1
fi
if [ ! -d $2 ];then
    echo "Diretório não existe"
    exit 1
fi

echo
echo "URL git: $1"
echo "Path: $2"

cd $2
echo "Clonando repositório..."
git clone $1
exit 0