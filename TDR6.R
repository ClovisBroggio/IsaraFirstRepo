## Date : 10.05.2020
## VP & VT
## Script TDR6


######## EXERCICE  : importez DesIris.txt, testez les scripts et commentez

# Import
iris1 <- read.table("DesIris.txt", header=TRUE, dec=".", sep=" ")  

# S?lection dans une table 
iris1[ ,1]   # s?lection d'une colonne par son num?ro avec [,n]
iris1[1, ]   # s?lection d'une ligne par son num?ro avec [n,]
iris1[1,2]  # s?lection d'une case avec [nlig,ncol]
iris1$SepalLength    # sélection d'une colonne nommé "SepalLength
iris1[c(1,5,10), ]   # sélection de 3 lignes : 1,5,10
iris1[-(5:30), ]     # sélection de toutes les lignes sauf celles comprises entre 5:30
iris1[ ,1:4]         # sélection des colonnes de 1:4
iris1[c(1,5,10) , 1:4] # sélection des lignes 1,5,10 et des colonnes 1:4
iris1[iris1$Species=="virginica" , ] # sélection conditionnelle des lignes selon si la colonne "Species" comprend exactement "virginica"
iris1[iris1$SepalLength > 7 , ] # sélection conditionnelle des lignes selon si les nombres inscrits dans la colonne SetalLength sont strictement supérieur à 7
iris1[iris1$SepalLength < 6  &  iris1$Species=="virginica", ]# sélection conditionnelle des lignes selon si les nombres inscrits dans la colonne SetalLength sont strictement inférieur à 6 et si la colonne "Species" comprend exactement "virginica"

# S?lection dans un vecteur
iris1$SepalLength[iris1$Species=="virginica"] # sélection des valeurs de la colonne SepalLength selon si la colonne "species" est égal à "virginica"
iris1[iris1$Species=="virginica", ]$SepalLength # même chose de précédement, on peut écrire les choses dans les 2 sens

# Calculs sur des sous-ensembles
apply(iris1[,1:4], MARGIN=2, mean) # calcul la moyenne des colonnes de 1:4, fonction MARGIN inconnu
tapply(iris1$SepalLength, iris1$Species, mean) # calcul la moyenne spécifique de chacunes des espèces



# Exercice 3

slv <- iris1$SepalLength[iris1$Species=="virginica"]
slv

mean(slv) # fait la moyenne de slv
var(slv) # calcule la variance
sqrt(var(slv)) # calcule l'écart type
sd(slv) # calcule l'écart type directement sans faire le calcule (racine carrée de la variance)
min(slv) # indique la valeur minimale de slv
max(slv) # indique la valeur maximale de slv
range(slv) # indique la valeur minimale et maximale de slv
sort(slv) # classe l'ensemble des valeurs de slv du plus petit au plus grand
rev(slv) # je ne comprends pas
sum(slv) # calcule la somme des valeurs de slv
cumsum(slv) # calcule la somme des valeurs de slv en ajoutant 1 valeur par une valeur à la façon d'une suite
median(slv) # indique la valeur médianne de slv
quantile(slv,0.25) # indique le quantile à 0,25%
quantile(slv) # indique part défaut tous les quantiles (0% / 25% / 50% / 75% / 100%)
length(slv) # indique le nombre de valeur dans slv




