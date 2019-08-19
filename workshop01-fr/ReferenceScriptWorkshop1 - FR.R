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
# Créer un objet avec une valeur de 1 + 1.718282 (le nombre d'Euler) et nommez-le valeur_euler

valeur_euler <- 1 + 1.718282
valeur_euler

## Défi 6 
# Créer un deuxième objet dont le nom commence par un chiffre. Que se passe-t-il ?

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

## Character vectors 
char.vector <- c("blue", "red", "green")
char.vector

## Logical vectors 
bool.vector <- c(TRUE, TRUE, FALSE)
bool.vector

bool.vector2 <- c(T,T,F)
bool.vector2

## Challenge 7 
# Create a vector containing the first 5 odd numbers, starting from 1, and name it "odd.n"
odd.n <- c(1,3,5,7)

## We can use vectors for calculations 
x <- c(1:5)
y <- 6 

x+y
x*y 

## Data frames 

# - Used to store data tables
# - A list of vectors of the same length
# - Columns = variables
# - Rows = observations, sites, cases, replicates, ...
# - Differents columns can have different modes

## One way to create vectors 
# Start by creating vectors 

siteID <- c("A1.01", "A1.02", "B1.01", "B1.02")
soil_pH <- c(5.6, 7.3, 4.1, 6.0)
num.sp <- c(17, 23, 15, 7)
treatment <- c("Fert", "Fert", "No_fert", "No_fert")

# We then combine them using the function data.frame() 
my.first.df <- data.frame(siteID, soil_pH, num.sp, treatment)
my.first.df

## Matrices, Arrays and Lists 

## Indexing vectors 
# You  can use indexing to chose a particular position, 
# let's say we want to see the second value of our `odd.n` vector

odd.n[2]
# It also work with multiple positions: 
odd.n[c(2,4)]
# It can be used to remove some values at particular positions 
odd.n[-c(1,2)]

# If you select a position that is not in the vector: 
odd.n[c(1,5)]

# You can also use conditions to select values 
char.vector[char.vector == "blue"]

## Challenge 8 

# Using the vector "num.vector"
# - Extract the 4th value
# - Extract the 1st and 3rd values
# - Extract all values except for the 2nd and the 4th

num.vector[4]
num.vector[c(1,3)]
num.vector[c(-2,-4)]

## Challenge 9 
# Explore the difference between these 2 lines of code:
char.vector == "blue"
char.vector[char.vector == "blue"]

## Indexing data frames
## Challenge 10 

# 1. Extract the `num.sp` column from `my.first.df` and multiply its value by  the first four values of `num.vec`.

my.first.df$num.sp * num.vector[c(1:4)]
# or
my.first.df[,3] * num.vector[c(1:4)]

# 2. After that, write a statement that checks if the values you obtained are greater than 25.
(my.first.df$num.sp * num.vector[c(1:4)]) > 25

## Functions 

# A function is a tool to simplify your life.
# 
# It allows you to quickly execute operations on objects without having to write every mathematical step.
# 
# A function needs entry values called **arguments** (or parameters). It then performs hidden operations using these arguments and gives a **return value**.
# To use (call) a function, the command must be structured properly, following the "grammar rules" of the `R` language: the syntax.
# function_name(argument 1, argument 2)

## Arguments

# Arguments are **values** and **instructions** the function needs to run.
# Objects storing these values and instructions can be used in functions:

a <- 3
b <- 5
sum(a,b)

## Challenge 11
# - Create a vector `a` that contains all the numbers from 1 to 5
# - Create an object `b` with a value of 2
# - Add `a` and `b` together using the basic `+` operator and save the result in an object called `result_add`
# - Add `a` and `b` together using the `sum` function and save the result in an object called `result_sum`
# - Compare `result_add` and `result_sum`. Are they different?
# - Add 5 to `result_sum` function using the `sum` function

a <- c(1:5)
b <- 2

result_add <- a + b
result_sum <- sum(a,b)

result_add
result_sum
sum(result_sum, 5)

## Arguments

# Arguments each have a **name** that can be provided during a function call.
# If the name is not present, the order of the arguments does matter.
# If the name is present, the order does not matter.

a <- 1:100
b <- a^2
plot(a,b)
plot(b,a)
plot(x = a, y = b)
plot(y = b, x = a)

## Packages 

#To install packages on your computer, use the function `install.packages`.
# install.packages("packageName")

#Installing a package is not enough to use it. You need to load it into your workspace 
# Use the library() function 

install.packages("ggplot2")

qplot(1:10, 1:10)

library(ggplot2)

qplot(1:10, 1:10)


## Getting help 
# Searching for functions
# 
# To find a function that does something specific in your installed packages, you can use `??` followed by a search term.
# 
# Let's say we want to create a *sequence* of odd numers between 0 and 10 as we did earlier. We can search in our packages all the functions with the word "sequence" in them:

??sequence 

# OK! SO let's use the `seq` function!!
# 
# But wait... how does it work? What arguments does it need?
# 
# To find information about a function in particular, use `?`
# 

?seq

## Challenge 13 

# 1. Create a sequence of even numbers from 0 to 10 using the `seq` function.
  seq(from=0, to=10, by=2)
  seq(0,10,2)

#  2. Create a unsorted vector of your favourite numbers, then sort your vector in reverse order.

numbers <- c(2,4,22,6,26)
sort(numbers, decreasing = T)

## Challenge 14
# 
# Find the appropriate functions to perform the following operations:
#   
# - Square root
# - Calculate the mean of numbers
# - Combine two data frames by columns
# - List availables objects in your workspace

?sqrt 
?mean
?cbind
?ls 

## Some useful R websites

# - http://stats.stackexchange.com
# - https://www.zoology.ubc.ca/~schulter/R/
#   - http://statmethods.net/
#   - http://rseek.org/
#   - http://cookbook-r.com/
#   - http://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf


## Thank you for attending!
########################### END OF SCRIPT ################################
