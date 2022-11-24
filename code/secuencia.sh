#Cuente la cantidad de registro de cada tipo de peptido cance_normalized 
tail -n +2 ../data/cancermine.csv | cut -d "," -f 3 | sort | uniq -c | sort > ../data/cancer.txt
#Cantidad de carcinoma por tipo de cancer
tail -n +2 ../data/cancermine.csv | cut -d "," -f 3 | grep -w "cell\|carcinoma" | sort | uniq -c | sort > ../data/carcinoma.txt


