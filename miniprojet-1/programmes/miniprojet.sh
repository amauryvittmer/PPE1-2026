if [ $# -eq 0 ];
then exit 0
fi

fichier=$1
line_nb=1

mkdir -p ../tableaux

while read -r line;
do
    echo -e "${line_nb}\t${line}"
    ((line_nb++))
done < "$fichier" > ../tableaux/tableau-fr.tsv
