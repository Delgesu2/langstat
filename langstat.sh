#!/bin/bash

# On vérifie si le paramètre est passé
if [ -z $1 ]
then
    echo "Veuillez entrer un nom de fichier en paramètre."
else

    # On vérifie que le fichier existe
    if [ ! -e $1 ]
    then
        echo "Le fichier n'existe pas."
    else


function count
{
    # Comptage du nombre de mots envoyé dans $action
    action=`wc -w < temp.txt`

    # Affichage du résultat suivi de la lettre correspondante 
    echo "$action - $lettre" 
}


# Boucle pour chaque lettre de l'alphabet
for lettre in {A..Z};
do
    # Filtrer la lettre
    grep $lettre $1 > temp.txt

    # Appel de la fonction puis envoi du résultat dans count.txt
    count >> count.txt

    # On efface le fichier temporaire
    rm temp.txt
done

    #Tri par ordre alphabétique si le mot "alpha" est le deuxième paramètre
    if [ $2 = "alpha" ]
    then
        sort -z count.txt
    else

    # Tri numérique inversé du résultat final
    sort -rn count.txt
    fi

    fi

fi

# On efface count.txt s'il existe
if [ -e count.txt ]
then
     rm count.txt
fi
