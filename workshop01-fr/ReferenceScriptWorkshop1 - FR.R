#### Atelier 1 du CSBQ 
#### Script R de référence 
## September 2018 

## Défi 1
## Comment lire la console
sortie <- "Ceci est la sortie"
sortie

# Utiliser R comme une calculatrice
## Additions et soustractions
1 + 1
10 - 1 

## Multiplications et divisions
2 * 2
8 / 2

## Exposants 
2^3

## Défi 2 
# Utilisez R pour effectuer l'opération suivante

2 + 16 * 24 - 56 

## Défi 3
# Utilisez R pour effectuer l'opération suivante
2 + 16 * 24 - 56 / (2 + 1) - 457

## Défi 4

# Quel est l'aire du cercle dont le rayon est de 5 cm ?
3.1416 * 5^2

# Notez que R a des constantes intégrées, telle que pi. Vous pouvez donc écrire:
pi * 5^2

## Objet 

# Les objets sont un des concepts le plus utilisé dans R.
# Vous pouvez stocker des valeurs dans un ojet nommé à l'aide de l'opérateur "<-"

nom_objet <- "valeurs"

## Nommer les objets: bonnes pratiques

# Choisir des noms courts et explicites 
# Il est recommander d'ajouter des espaces autour de l'opérateur "<-"
# Après avoir tapé le nom des objets, R retournera leur valeur 

moy_x <- (2 + 6) / 2
moy_x 

## Défi 5 
# Créez un objet avec une valeur de 1 + 1.718282 (le nombre d'Euler) et nommez-le "valeur_euler"

valeur_euler <- 1 + 1.718282
valeur_euler

## Défi 6 
# Créez un deuxième objet dont le nom commence par un chiffre. Que se passe-t-il ?

#8valeur_euler <- 8 * (1 + 1.718282)

## Types de structures de données en R 

# - Vecteurs
# - Data frames
# - Matrices, arrays et listes

## Vecteur

# - Une entitée constituée d'une liste de valeurs de même type
# - Une valeur seule est appelée une *atomic value*
# - Toutes les valeurs dans un vecteur doivent avoir le même mode (ou classe)
# * Numeric: seulement des nombres
# * Logical: entrées True/False
# * Character: Texte ou un mélange de texte et d'autres modes

# La création d'un vecteur nécessite la fonction c() // c() signifie combiner ou concaténer 

vecteur <- c("valeur1", "valeur2")

## Vecteurs numériques
num_vecteur <- c(1, 4, 3, 98, 32, -76, -4)
num_vecteur 

## Vecteurs de caractères
char_vecteur <- c("bleu", "rouge", "vert")
char_vecteur

## Vecteurs logiques ou booléens
bool_vecteur <- c(TRUE, TRUE, FALSE)
bool_vecteur

bool_vecteur2 <- c(T,T,F)
bool_vecteur2

## Défi 7 
# Créez un vecteur contenant les 5 premiers nombres impairs, à partir de 1 et nommez-le "impair"
impair <- c(1, 3, 5, 7)

## Nous pouvons utiliser des vecteurs pour faire des calculs
x <- c(1:5)
y <- 6 

x + y
x * y 

## Data frame 

# - Utilisé pour stocker des tables de données
# - une liste de vecteurs de même longueur
# - une colonne = une variable
# - une ligne = une observation, un site, un replicat, ...
# - Différentes colonnes peuvent avoir différents modes

## Une façon de faire pour créer un data frame
# Créez des vecteurs 

site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")
pH_sol <- c(5.6, 7.3, 4.1, 6.0)
num_sp <- c(17, 23, 15, 7)
traitement <- c("Fert", "Fert", "Non_fert", "Non_fert")

# Combinez les vecteurs en utilisant la fonction data.frame()
mon_df <- data.frame(site_id, pH_sol, num_sp, traitement)
mon_df

## Matrice, Array et Listes 

## Indexer un vecteur
# Vous pouvez utiliser l'indexation pour choisir une postion particulière au sein d'un vecteur,
# Par exemple, nous voulons obtenir la deuxième valeur de notre vecteur "impair"

impair[2]
# Nous pouvons sélectionner plusieurs positions 
impair[c(2, 4)]
# Nous pouvons utiliser l'indexation pour supprimer certaines valeurs à des positions particulières
impair[-c(1, 2)]

# Si nous selectionnons une position qui n'existe pas dans le vecteur
impair[c(1, 5)]

# Des conditions peuvent aussi être utilisées pour sélectionner des valeurs 
char_vecteur[char_vecteur == "bleu"]

## Défi 8 

# En utilisant le vecteur "num_vecteur"
# - Extrayez la 4ème valeur
# - Extrayez les 1ère et 3ème valeurs
# - Extrayez toutes les valeurs sauf les 2ème et 4ème

num_vecteur[4]
num_vecteur[c(1, 3)]
num_vecteur[c(-2, -4)]

## Défi 9 
# Explorez les différences entre ces deux lignes de code
char_vecteur == "bleu"
char_vecteur[char_vecteur == "bleu"]

## Indexer un data frame
## Défi 10 

# 1. Extrayez la colonne "num_sp" de "mon_df" et multipliez ses valeurs par les premières quatre valeurs de "num_vecteur"

mon_df$num_sp * num.vecteur[c(1:4)]
# or
mon_df[, 3] * num.vecteur[c(1:4)]

# 2. Ensuite, écrivez une déclaration logique qui vérifie si les valeurs obtenurs sont supérieures à 25
(mon_df$num.sp * num.vecteur[c(1:4)]) > 25

## Fonction 

# Une fonction est un outil pour vous simplifier la vie.
# 
# Il vous permet d'exécuter rapidement des opérations sur des objets sans avoir à écrire toutes les étapes mathématiques.
# 
# Une fonction nécessite des valeurs d'entrée appelées arguments (ou paramètres). Elle effectue ensuite des opérations cachées en utilisant ces arguments et donne une valeur de retour.
# Pour utiliser (appeler) une fonction, la commande doit être structurée correctement, en suivant les règles de grammaire du langage R, i.e. la syntaxe.
# nom_fonction(argument 1, argument 2)

## Arguments

# Les arguments sont des valeurs et des instructions nécessaires à la fonction pour être exécutée.
# Les objets stockant ces valeurs et ces instructions peuvent être utilisés dans des fonctions.

a <- 3
b <- 5
sum(a, b)

## Défi 11


# Créez un vecteur "a" qui contient tous les nombres de 1 à 5
# Créez un objet "b" qui a une valeur de 2
# Additionnez "a" et "b" en utilisant l'opérateur de base + et enregistrez le résultat dans un objet appelé "resultat_add"
# Additionnez "a" et "b" ensemble en utilisant la fonction sum() et enregistrez le résultat dans un objet appelé "resultat_sum"
# Comparez "resultat_add" et "resultat_sum". Sont-ils différents?
# Additionnez 5 à "resultat_sum" en utilisant la fonction sum()

a <- c(1:5)
b <- 2

resultat_add <- a + b
resultat_sum <- sum(a, b)

resultat_add
resultat_sum
sum(resultat_sum, 5)

## Arguments

# Les arguments ont chacun un **nom** pouvant être spécifié lors d'un appel de fonction.
# Si le nom n'est pas spécifié, l'ordre des arguments est important.
# Si le nom est spécifié, l'ordre n'a pas d'importance.

a <- 1:100
b <- a^2
plot(a, b)
plot(b, a)
plot(x = a, y = b)
plot(y = b, x = a)

## Package

# Pour installer des packages sur votre ordinateur, utilisez la fonction install.packages().
# install.packages("nom_du_package")

# L'installation d'un package ne suffit pas pour l'utiliser. Vous devez aussi le charger dans votre espace de travail à l'aide de la fonction library().

install.packages("ggplot2")

qplot(1:10, 1:10)

library(ggplot2)

qplot(1:10, 1:10)


## Obtenir de l'aide
# Recherche de fonctions
# 
# Pour trouver une fonction qui fait une action spécifique dans vos packages installés, vous pouvez utiliser "??" suivi d'un terme de recherche.
# 
# Disons que nous voulons créer une séquence de nombres impairs compris entre 0 et 10, comme nous l'avons fait précédemment. Nous pouvons rechercher dans nos packages toutes les fonctions qui contiennent le mot séquence dans leur description:

??sequence 

# OK! Utilisons le fonction seq() !!
# 
# Mais attendez... Comment fonctionne_t_elle ? De quels arguments a_t_elle besoin ?
# 
# Pour trouver des informations sur une fonction en particulier, utilisez "?"
# 

?seq

## Défi 13 

# 1. Créez une séquence de nombres pairs entre 0 et 10 en utilisant la fonction seq()
seq(from = 0, to = 10, by = 2)
seq(0, 10, 2)

#  2. Créez un vecteur non ordonné de vos nombres favoris, puis triez votre vecteur dans l'ordre inverse

nombres <- c(2, 4, 22, 6, 26)
sort(nombres, decreasing = T)

## Défi 14
# 
# Recherchez les fonctions appropriées pour effectuer les opérations suivantes:
#   
# - Racine carrée
# - Moyenne de plusieurs nombres
# - Combiner deux data frames par colonnes
# - Lister des objets disponibles dans votre espace de travail


?sqrt 
?mean
?cbind
?ls 

## Quelques sites internet utiles

# - http://stats.stackexchange.com
# - https://www.zoology.ubc.ca/~schulter/R/
# - http://statmethods.net/
# - http://rseek.org/
# - http://cookbook-r.com/
# - http://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf


## Merci d'avoir participé !
########################### FIN DU SCRIPT ################################
