##Section: 01-preparation-pour-l-atelier.R 




##Section: 02-introduction-fr.R 

> sortie
[1] "Ceci est la sortie"

[1] 1 2 3 4 5
[6] 6 7 8 9 10


##Section: 03-r-comme-calculatrice.R 

> 1 + 1
[1] 2

> 10 - 1
[1] 9

> 2 * 2
[1] 4

> 8 / 2
[1] 4

> 2^3
[1] 8


##Section: 04-manipulation-objets.R 

#Commençons par créer un objet nommé moy_x.
#Le symbole # est utilisé dans R afin d’indiquer les commentaires à l’intérieur d’un code.
#Ces lignes ne sont pas traitées par R.
#C’est très important d’ajouter des commentaires à un code,
#car ça permet à d’autres personnes de mieux le comprendre et de l’utiliser.
moy_x <- (2 + 6) / 2
#En tapant le nom de l’objet dans la console, R retourne la valeur de l’objet.
moy_x
[1]  4

> y <- x = 5
Error in y <- x = 5 : object 'y' not found
> y = x <- 5
> y
[1] 5
> x
[1] 5


valeur_euler <- 1 + 1.718282

#Créez un vecteur numérique avec la fonction c (qui signifie combiner ou concaténer).
num_vecteur <- c(1, 4, 3, 98, 32, -76, -4)

#Créez un vecteur de caractères. N’oubliez pas les guillemets !
car_vecteur <- c("bleu", "rouge", "vert")

#Créez un vecteur logique ou booléen. N’utilisez pas les guillemets sinon R va considérer les éléments
#comme des chaînes de caractères.
bool_vecteur <- c(TRUE, TRUE, FALSE)

#C’est aussi possible d’utiliser les abréviations pour les vecteurs logiques.
bool_vecteur2 <- c(T, T, F)

impair <- c(1, 3, 5, 7, 9)

> impair <- c(1, 3, 5, 7, 9)
> impair
[1] 1 3 5 7 9
#  La réponse que R retourne en inscrivant ''impair'' n’est pas directement utilisable
# (puisqu’elle n’est pas dans la fonction ''c()'' et les chiffres ne sont pas entourés de virgules).

> dput(impair)
c(1, 3, 5, 7, 9)

# La sortie peut être copiée et collée pour créer un nouvel objet en utilisant la fonction structure()
> structure(c(1, 3, 5, 7, 9))
[1] 1 3 5 7 9

#Créez deux vecteurs numériques.
> x <- 1:5
# Rappelez-vous que le symbole '':'', lorsqu’utilisé avec des chiffres, est l’opérateur de séquence.
# Ça indique à R de créer une série qui augmente de 1.
# C’est équivalent à écrire x <- c(1, 2, 3, 4, 5)
# Une autre façon équivalente est : x <- c(1:5).

> y <- 6

# Faisons la somme des deux vecteurs.
# 6 est ajouté à tous les éléments du vecteur x.
> x + y
[1]  7 8 9 10 11

# Multiplions x par y.
> x * y
[1]  6 12 18 24 30


# On commence par créer les vecteurs.
site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")
pH_sol <- c(5.6, 7.3, 4.1, 6.0)
num_sp <- c(17, 23, 15, 7)
traitement <- c("Fert", "Fert", "Non_fert", "Non_fert")

# On peut grouper tous ces vecteurs en un data frame avec la fonction data.frame().
mon_df <- data.frame(site_id, pH_sol, num_sp, traitement)

# On l’affiche à la console!
mon_df

> dput(mon_df)
structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
), pH_sol = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7), traitement = c("Fert",
"Fert", "Non_fert", "Non_fert")), class = "data.frame", row.names = c(NA, -4L))

# Il est possible de reconstruire le data frame initial (avec certaines métadonnées associées, telles que la classe des variables par exemple) en copiant-collant la sortie précédente
> structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
), pH_sol = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7), traitement = c("Fert",
"Fert", "Non_fert", "Non_fert")), class = "data.frame", row.names = c(NA, -4L))


# Créons tout d’abord un vecteur numérique et un vecteur de caractères.
# Ce n’est pas nécessaire de faire cette étape si vous l’avez déjà fait dans un exercice précédent.
> impair <- c(1, 3, 5, 7, 9)

# Extrayons le deuxième élément du vecteur numérique.
> impair[2]
[1]  3

# Extrayons les 2ème et 4ème éléments du vecteur numérique.
> impair[c(2, 4)]
[1]  3 7

# Extrayons tous les éléments du vecteur numérique sauf les deux premières.
> impair[c(-1, -2)]
[1] 5 7 9

# Si nous sélectionnons une position qui n'existe pas dans le vecteur numérique.
impair[c(1,6)]
[1] 1 NA
# Il n’y a pas de sixième valeur dans ce vecteur, donc R retourne une valeur nulle (i.e. NA).
# NA signifie 'Not available'.

# Nous pouvons également utiliser des conditions pour sélectionner des valeurs.
> impair[impair > 4]
[1] 5 7 9

# Nous pouvons procéder de même sur les vecteurs de caractère
# Extraire tous les éléments correspondant exactement à « bleu » du vecteur de caractères.
# Prenez note de l’utilisation du double signe d’égalité ==.
> car_vecteur[car_vecteur == "bleu"]
[1]  "bleu"


> num_vecteur[4]
[1] 98

> num_vecteur[c(1,3)]
[1] 1  3

> num_vecteur[c(-2,-4)]
[1] 1  3  32  -76  -4

> car_vecteur == "bleu"
> car_vecteur[car_vecteur == "bleu"]

car_vecteur[c(TRUE, FALSE, FALSE)]
# On spécifie ici que la première valeur est "vraie",
# c'est-à-dire qu'on souhaite que R nous retourne la première valeur
# du vecteur car_vecteur, soit "bleu".

# Réutilisons le data frame créé précédemment (mon_df)
# Extrayons la première ligne du data frame.
> mon_df[1, ]

# Extrayons la troisième colonne du data frame.
> mon_df[, 3]
# Notez qu'un index vide sélectionne toutes les valeurs

# Extrayons le deuxième élément de la quatrième colonne du data frame.
> mon_df[2, 4]

# Extrayons les lignes 2 et 4 du data frame.
> mon_df[c(2,4), ]

# Extrayons la colonne « site_id » en référant directement à son nom.
# Le signe de dollar ($) permet une telle opération !
> mon_df$site_id

# Extrayons la deuxième valeur de la colonne « site_id »
> mon_df$site_id[2]

# Extrayons les variables « site_id » et « pH_sol ».
> mon_df[,c("site_id","pH_sol")]

# Commençons par créer deux vecteurs à comparer.
> x2 <- c(1:5)
> y2 <- c(1, 2, -7, 4, 5)

# Vérifions si les éléments de x2 sont plus grand ou égaux à 3.
# R retourne une valeur TRUE/FALSE pour chaque élément (dans le même ordre que x2).
> x2 >= 3
[1] FALSE FALSE TRUE TRUE TRUE

# Vérifions si les éléments de x2 sont exactement égaux à ceux de y.
> x2 == y2
[1] TRUE TRUE FALSE TRUE TRUE

# Est-ce que 3 n’est pas égal à 4? Bien sûr!
> 3 != 4
[1] TRUE

# Vérifions quels éléments de x2 sont plus grands que 2, mais plus petits que 5.
# Il faut réécrire x2 deux fois pour que ça fonctionne!
> x2 > 2 & x2 < 5
[1] FALSE FALSE TRUE TRUE FALSE
# Écrire x2 > 2 & < 5 va retourner une erreur !

> mon_df$num_sp * num_vecteur[c(1:4)]
[1] 17 92 45 686

# Ou encore
> mon_df[, 3] * num_vecteur[c(1:4)]
[1] 17 92 45 686

> (mon_df$num_sp * num_vecteur[c(1:4)]) > 25
[1] FALSE TRUE TRUE TRUE


##Section: 05-fonctions.R 

> sum(1, 2)
[1] 3

> a <- 3
> b <- 5
> sum(a, b)
[1] 8

> a <- 1:5
> b <- 2
> resultat_add <- a + b
> resultat_sum <- sum(a, b)

> resultat_add
[1]  3 4 5 6 7

> resultat_sum
[1] 17

> sum(resultat_sum, 5)
[1] 22

> log(x = 8, base = 2)

> a <- 1:100
> b <- a^2
> plot(a, b)
> plot(b, a)
> plot(x = a, y = b)
> plot(y = b, x = a)

plot(a, b)

plot(b, a)

plot(x = a, y = b)

plot(y = b, x = a)


##Section: 06-librairies.R 

> install.packages("ggplot2")

> qplot(1:10, 1:10)

> library("ggplot2")
> qplot(1:10, 1:10)

> detach(package:ggplot2)

> ??sequence

> ?seq

> seq(from = 0, to = 10, by = 2)
[1] 0 2 4 6 8 10

> seq(0, 10, 2)
[1] 0 2 4 6 8 10

> nombres <- c(2, 4, 22, 6, 26)
sort(nombres, decreasing = TRUE)
[1] 26 22  6  4  2


##Section: 07-considerations-finales.R 




##Section: 08-references-fr.R 




