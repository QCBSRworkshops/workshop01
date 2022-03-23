##Section: 01-preparation-pour-l-atelier.R 

###Avis ###
#                                                                            #
#Ceci est un script généré automatiquement basé sur les morceaux de code du  #
#livre pour cet atelier.                                                     #
#                                                                            #
#Il est minimalement annoté pour permettre aux participants de fournir leurs #
#commentaires : une pratique que nous encourageons vivement.                 #
#                                                                            #
#Notez que les solutions aux défis sont également incluses dans ce script.   #
#Lorsque vous résolvez les défis par vous-méme, essayez de ne pas parcourir  #
#le code et de regarder les solutions.                                       #
#                                                                            #
#Bon codage !                                                               #



##Section: 02-introduction-fr.R 

sortie <- "Ceci est la sortie"
sortie

[1] 1 2 3 4 5
[6] 6 7 8 9 10

x <- c("2", -3, "end", 0, 4, 0.2)
as.numeric(x)

x*10


##Section: 03-r-comme-calculatrice.R 

1 + 1


10 - 1


2 * 2


8 / 2


 2^3


2+16*24-56

2+16*24-56/(2+1)-457

3.1416 * 5^2

pi*5^2


##Section: 04-manipulation-objets.R 

#Commençons par créer un objet nommé moy_x.
#Le symbole # est utilisé dans R afin d’indiquer les commentaires à l’intérieur d’un code.
#Ces lignes ne sont pas traitées par R.
#C’est très important d’ajouter des commentaires à un code,
#car ça permet à d’autres personnes de mieux le comprendre et de l’utiliser.
moy_x <- (2 + 6) / 2
#En tapant le nom de l’objet dans la console, R retourne la valeur de l’objet.
moy_x

y <- x = 5
y = x <- 5
y
x

valeur_euler <- 1 + 1.718282
valeur_euler

#Créez un vecteur numérique avec la fonction c (qui signifie combiner ou concaténer).
num_vecteur <- c(1, 4, 3, 98, 32, -76, -4)
num_vecteur

#Créez un vecteur de caractères. N’oubliez pas les guillemets !
car_vecteur <- c("bleu", "rouge", "vert")
car_vecteur

#Créez un vecteur logique ou booléen. N’utilisez pas les guillemets sinon R va considérer les éléments
#comme des chaînes de caractères.
bool_vecteur <- c(TRUE, TRUE, FALSE)
bool_vecteur

#C’est aussi possible d’utiliser les abréviations pour les vecteurs logiques.
bool_vecteur2 <- c(T, T, F)
bool_vecteur2

impair <- c(1, 3, 5, 7, 9)

impair <- c(1, 3, 5, 7, 9)
impair

#  La réponse que R retourne en inscrivant ''impair'' n’est pas directement utilisable
# (puisqu’elle n’est pas dans la fonction ''c()'' et les chiffres ne sont pas entourés de virgules).

dput(impair)

# La sortie peut être copiée et collée pour créer un nouvel objet en utilisant la fonction structure()
structure(c(1, 3, 5, 7, 9))


#Créez deux vecteurs numériques.
x <- 1:5
# Rappelez-vous que le symbole '':'', lorsqu’utilisé avec des chiffres, est l’opérateur de séquence.
# Ça indique à R de créer une série qui augmente de 1.
# C’est équivalent à écrire x <- c(1, 2, 3, 4, 5)
# Une autre façon équivalente est : x <- c(1:5).

y <- 6

# Faisons la somme des deux vecteurs.
# 6 est ajouté à tous les éléments du vecteur x.
x + y

# Multiplions x par y.
x * y


# On commence par créer les vecteurs.
site_id <- c("A1.01", "A1.02", "B1.01", "B1.02") # l'identifiant du site
pH_sol <- c(5.6, 7.3, 4.1, 6.0) #la mesure du pH du sol à chaque site
num_sp <- c(17, 23, 15, 7) #le nombre d'espèces observées
traitement <- c("Fert", "Fert", "Non_fert", "Non_fert") #traitement appliqué

# On peut grouper tous ces vecteurs en un data frame avec la fonction data.frame().
mon_df <- data.frame(site_id, pH_sol, num_sp, traitement)

# On l’affiche à la console!
mon_df

dput(mon_df)

# Il est possible de reconstruire le data frame initial (avec certaines métadonnées associées, telles que la classe des variables par exemple) en copiant-collant la sortie précédente
structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
), pH_sol = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7), traitement = c("Fert",
"Fert", "Non_fert", "Non_fert")), class = "data.frame", row.names = c(NA, -4L))


# Créons tout d’abord un vecteur numérique et un vecteur de caractères.
# Ce n’est pas nécessaire de faire cette étape si vous l’avez déjà fait dans un exercice précédent.
impair <- c(1, 3, 5, 7, 9)

# Extrayons le deuxième élément du vecteur numérique.
impair[2]


# Extrayons les 2ème et 4ème éléments du vecteur numérique.
impair[c(2, 4)]

# Extrayons tous les éléments du vecteur numérique sauf les deux premières.
impair[c(-1, -2)]

# Si nous sélectionnons une position qui n'existe pas dans le vecteur numérique.
impair[c(1,6)]

# Nous pouvons également utiliser des conditions pour sélectionner des valeurs.
impair[impair > 4]

# Nous pouvons procéder de même sur les vecteurs de caractère
# Extraire tous les éléments correspondant exactement à « bleu » du vecteur de caractères.
# Prenez note de l’utilisation du double signe d’égalité ==.
car_vecteur[car_vecteur == "bleu"]


 num_vecteur[4]

num_vecteur[c(1,3)]

num_vecteur[c(-2,-4)]

car_vecteur == "bleu"

car_vecteur[car_vecteur == "bleu"]

car_vecteur[c(TRUE, FALSE, FALSE)]
# On spécifie ici que la première valeur est "vraie",
# c'est-à-dire qu'on souhaite que R nous retourne la première valeur
# du vecteur car_vecteur, soit "bleu".

# Réutilisons le data frame créé précédemment (mon_df)
# Extrayons la première ligne du data frame.
mon_df[1, ]

# Extrayons la troisième colonne du data frame.
mon_df[, 3]
# Notez qu'un index vide sélectionne toutes les valeurs

# Extrayons le deuxième élément de la quatrième colonne du data frame.
mon_df[2, 4]

# Extrayons les lignes 2 et 4 du data frame.
mon_df[c(2,4), ]

# Extrayons la colonne « site_id » en référant directement à son nom.
# Le signe de dollar ($) permet une telle opération !
mon_df$site_id

# Extrayons la deuxième valeur de la colonne « site_id »
mon_df$site_id[2]

# Extrayons les variables « site_id » et « pH_sol ».
mon_df[,c("site_id","pH_sol")]

# Commençons par créer deux vecteurs à comparer.
x2 <- c(1:5)
y2 <- c(1, 2, -7, 4, 5)

# Vérifions si les éléments de x2 sont plus grand ou égaux à 3.
# R retourne une valeur TRUE/FALSE pour chaque élément (dans le même ordre que x2).
x2 >= 3

# Vérifions si les éléments de x2 sont exactement égaux à ceux de y.
x2 == y2

# Est-ce que 3 n’est pas égal à 4? Bien sûr!
3 != 4

# Vérifions quels éléments de x2 sont plus grands que 2, mais plus petits que 5.
# Il faut réécrire x2 deux fois pour que ça fonctionne!
x2 > 2 & x2 < 5
# Écrire x2 > 2 & < 5 va retourner une erreur !

mon_df$num_sp * num_vecteur[c(1:4)]
# Ou encore
mon_df[, 3] * num_vecteur[c(1:4)]

(mon_df$num_sp * num_vecteur[c(1:4)]) > 25


##Section: 05-fonctions.R 

sum(1, 2)

a <- 3
b <- 5
sum(a, b)

a <- 1:5

b <- 2

resultat_add <- a + b

resultat_sum <- sum(a, b)

resultat_add

resultat_sum

sum(resultat_sum, 5)

log(x = 8, base = 2)

log(8, 2)
log(2, 8)

log(x = 8, base = 2)
log(base = 2, x = 8)

a <- 1:100
b <- a^2
plot(a, b)
plot(b, a)
plot(x = a, y = b)
plot(y = b, x = a)

a <- 1:100
b <- a^2

plot(a, b)

plot(b, a)

plot(x = a, y = b)

plot(y = b, x = a)


##Section: 06-librairies.R 

install.packages("ggplot2")

qplot(1:10, 1:10)

library("ggplot2")
qplot(1:10, 1:10)

library("ggplot2")
qplot(1:10, 1:10)

detach(package:ggplot2)

??sequence

?seq

seq(from = 0, to = 10, by = 2)

seq(0, 10, 2)

nombres <- c(2, 4, 22, 6, 26)
sort(nombres, decreasing = TRUE)


##Section: 07-considerations-finales.R 




##Section: 08-references-fr.R 




