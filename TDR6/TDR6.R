## Date : 10.05.2020
## VP & VT
## Script TDR6


######## EXERCICE  : importez DesIris.txt, testez les scripts et commentez

# Import
iris1 <- read.table("data/DesIris.txt", header=TRUE, dec=".", sep=" ")  

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

# Exercice 4 (copier coller du TDR6)

n <- nrow(iris1)           # nrow() : nombre de lignes
noms <- paste("iris", 1:n) # paste() : coller
head(noms)
## [1] "iris 1" "iris 2" "iris 3" "iris 4" "iris 5" "iris 6"

rapport <- iris1$PetalLength/iris1$PetalWidth  
head(rapport)
## [1] 7.0 4.0 7.5 7.0 8.0 8.0

length(noms); length(rapport); nrow(iris1)
## [1] 33
## [1] 33
## [1] 33
names(iris1)
## [1] "SepalLength" "SepalWidth"  "PetalLength" "PetalWidth"  "Species"



iris1$noms <- noms
names(iris1)
## [1] "SepalLength" "SepalWidth"  "PetalLength" "PetalWidth"  "Species"    
## [6] "noms"

iris2 <- data.frame(iris1, rapport)
head(iris2)
##   SepalLength SepalWidth PetalLength PetalWidth Species   noms rapport
## 1         5.1        3.5         1.4        0.2  setosa iris 1     7.0
## 2         5.0        3.4         1.6        0.4  setosa iris 2     4.0
## 3         5.2        3.5         1.5        0.2  setosa iris 3     7.5
## 4         5.2        3.4         1.4        0.2  setosa iris 4     7.0
## 5         4.7        3.2         1.6        0.2  setosa iris 5     8.0
## 6         4.8        3.1         1.6        0.2  setosa iris 6     8.0

autre <- 1:3
iris1$num <- autre
iris1$num
##  [1] 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3

tapply(iris2$rapport, iris2$Species, mean) 
##     setosa versicolor  virginica 
##   7.531250   3.181919   2.624026
# Il s'agit de setosa

# Pour une réponse directe à la question on peut faire :
rapport_m<-tapply(iris2$rapport, iris2$Species, mean) 
names(rapport_m[rapport_m==max(rapport_m)])
## [1] "setosa"


# Exercice 5

t3var <- read.table("data/t3var.txt", header=TRUE, sep="\t") 
head(t3var)

indiv_sexe <- length(t3var$sexe)
indiv_poi <- length(t3var$poi)
indiv_tai <- length(t3var$tai)

indiv_sexe
indiv_poi
indiv_tai

# 66 individus, 3 variables, 1 variable qualitative (booleen) et 2 variables quantitatives
# sexe (h ou f)
# poids en kg
# taille en cm

t3var[c(1,10,20), ]

t3var[t3var$tai > 170  &  t3var$sexe=="f", ]

t3var[c(10:20), -1]


f_sup_mean <- t3var[t3var$tai > mean(t3var$tai[t3var$sexe=="f"])  &  t3var$sexe=="f", ]
f_sup_mean
length(f_sup_mean$sexe)

mean(t3var$poi)

mean(t3var$poi[t3var$sexe=="f"])
mean(t3var$poi[t3var$sexe=="h"])

var(t3var$poi[t3var$sexe=="f"])
var(t3var$poi[t3var$sexe=="h"])

