#!/usr/bin/env bash

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on décrit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
#===============================================================================
#!/ usr/ bin/ bash
if [ $# -ne 1 ]
then
echo "ce programme demande un argument "
exit
fi
FICHIER_URLS =$1 Projet_Dependance/Corpus_Jp/url-dependance_jp
OK =0
NOK =0
while read -r LINE ;
do
echo "la ligne : $LINE "
if [[ $LINE =∼ "^ https ?:// " ]]
then
echo " ressemble à une URL valide "
OK=$( expr $OK + 1)
else
echo "ne ressemble pas à une URL valide "
NOK =$( expr $NOK + 1)
fi
done < $FICHIER_URLS
echo " $OK URLs et $NOK lignes douteuses " > sortie_url.txt


fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie

grep -E ‘扶養家族’ Projet_Dependance/Corpus_Jp/dependance*.txt | wc -l
grep -E ‘付属’ Projet_Dependance/Corpus_Jp/dependance*.txt | wc -l
grep -E ‘依存性’ Projet_Dependance/Corpus_Jp/dependance*.txt | wc -l
grep -E ‘常用辟’ Projet_Dependance/Corpus_Jp/dependance*.txt | wc -l
grep -E ‘従属’ Projet_Dependance/Corpus_Jp/dependance*.txt | wc -l
grep -E ‘中毒’ Projet_Dependance/Corpus_Jp/dependance*.txt | wc -l

# !!!!!!
# ici on doit vérifier que nos deux paramètres existent, sinon on ferme!
# !!!!!!

# modifier la ligne suivante pour créer effectivement du HTML
echo "Je dois devenir du code HTML à partir de la question 3" > $fichier_tableau

lineno=1;

while read -r line;
do
	echo "ligne $lineno: $line";
	lineno=$((lineno+1));
done < $fichier_urls
