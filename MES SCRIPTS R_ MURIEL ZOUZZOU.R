# #####################################  TD1

# Exercice1 - les objets et les vecteurs

a=10
b=5

resultat=a*b
print(resultat)

A=7.2
B=10.1
# Le langage R est sensible à la casse 
#(majuscule/minuscule) car nous avons 4 objets a,b,A et B

resultat=A+B
#La précédente valeur de l'object resultat a été 
#supprimée et remplacée par la somme de A et B.

rm(a,b,A,B,resultat) # pour supprimer l'ensemble des objets

# Exercice2- Les fonctions usuelles

# PREMIERE PARTIE 

vect=c(1,2,3,4,5)
class(vect)
vect[3]  # en R on commence à indexer avec le chiffre 1 donc ici 
# le troisième élément est : "3" 

v1=c(1:5) # contient les nombres de 1 à 5

v2=v1+3 # ajoute(+3) à chaque élément de v1

v3=c(1:6)

v4=v3^2

v5=v4/2

vectcaract=c("Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi","Dimanche")
class(vectcaract)
vectcaract[c(2,7)] # affiche le deuxième et le septième élément
# de vectcaract

vectbool=c(TRUE,FALSE) # pas besoin de mettre dièse parce que 
# ce sont des valeurs " logiques " ou encore " booléen "
class(vectbool)

vectnum=c(0.8,5.2,68.7,9.4)
class(vectnum)
vectnum[-3]  # permet de ne pas afficher " 68.7 " qui est le 
# troisième élément

vectmonth=c("Janvier","Février","Mars","Avril","Mai","Juin","Juillet","Août","Septembre","Octobre","Novembre","Décembre")
class(vectmonth)
vectmonth[1:3]

vectnbneg=c(-1,-5,-9,-7)
class(vectnbneg)
vectnbneg[c(length(vectnbneg),1)] 

vectfruit=c("Ananas","Pomme","Poire","Banane douce","Orange")
class(vectfruit)
vectfruit[-c(1,2)]

vectna=c(1,2,NA,7)
class(vectna)

# DEUXIEME PARTIE 

sequence1=seq(1:10)
length(sequence1)

sequence2=seq(2,20,2)  # seq(min, max, le troisième terme est le " Pas ")
length(sequence2)

seqdecroi=seq(0,-5)
length(seqdecroi)

seqnbrs=seq(5,50,5)
length(seqnbrs)

seqdcr=seq(10,1)
length(seqdcr)

seq1=seq(0,1,0.1)
length(seq1)

seq2=seq(from=5,to=-5,by=-1)
length(seq2)

seq3=seq(1,10,2) # nombre impair entre 1 et  10 
length(seq3)

# TROISIEME PARTIE

v6=rep(3,5)

v7=rep(c("A","B","C"),3) #répète A,B,C trois fois de suite 

v8=rep(seq(1,3),3)

v9=rep(c(TRUE,FALSE),4)

# QUATRIEME PARTIE 
# Supprimer tous les objets

ls()  # affiche tous les objets crées 

rm(list = ls())  # supprime tous les objets 


# EXERCICE 3- FONCTIONS STATISTIQUE UNIVARIES ET SIMULATION 

# PREMIERE PARTIE - Les fonctions runif(), mean(), median(), min(), max()

# runif(n=nombre de nombre désiré, min= valeur minimum, max= valeur maximum)

vect1=runif(5,0,1) # runif() permet de 
# générer des nombres aléatoires 
# selon une distribution uniforme

mean(vect1)
median(vect1)
min(vect1)
max(vect1)

sequence1=runif(10,-5,5)  # générer dix nombres aléatoires entre -5 et 5 
mean(sequence1) 
median(sequence1)
min(sequence1)
max(sequence1)

# parreil pour les prochaines questions

# DEUXIEME PARTIE 

# Les fonctions rnorm(), mean(), sd(), hist(), quantile()

# rnorm()permet de générer des nombres aléatoires selon une 
# distribution normale

echant1=rnorm(20,-2,3)
mean(echant1)
sd(echant1) # calcule l'écart type 
hist(echant1)

# correction ( il fallait régler les marges )

# Réglage des marges
par(mar = c(5, 4, 4, 2) + 0.1)  # Les marges sont définies dans l'ordre inférieur, gauche, supérieur, droit
# Création de l'échantillon
echant1 <- rnorm(20, -2, 3)
# Affichage de la moyenne et de l'écart-type de l'échantillon
mean(echant1)
sd(echant1)
# Tracé de l'histogramme
hist(echant1)

echant2=rnorm(2000,-2,3)
mean(echant2)
sd(echant2)
hist(echant2)

echantillon <- rnorm(n = 2000, mean = 0, sd = 1)
moyenne <- mean(echantillon)
ecart_type <- sd(echantillon)
print(paste("Moyenne : ", moyenne))
print(paste("Écart-type : ", ecart_type))
hist(echantillon)

quantile(echantillon, probs = c(0.25)) # quantile à 25%
quantile(echantillon, probs = c(0.50)) # ... à 50%
quantile(echantillon, probs = c(0.75)) # ... à 75 %

seq1=seq(0,1,0.1) # déciles (soit (1/9 pas pcquon en a 9))
quantile(echantillon,seq1) # premiere partie c'est l'objet et la seconde partie 
# c'est la probabilité d'obtenir ce quantile 

quantile(echantillon,seq(0,1,0.01)) # les centiles (on a 99 centiles soit 1/99 pas)

# TROISIEME PARTIE - Les fonctions sum() , round()

salaire=rnorm(3000,2400,300)
mean(salaire)
sd(salaire ) # permet de calculer l'écart type 

round(salaire,2)

# En résumé, la masse salariale désigne le montant 
#total des rémunérations versées par une entreprise
# à ses employés sur une période donnée, généralement une année. 

masse_salariale=sum(salaire) # somme des valeurs entre elles 
salaire_median=median(salaire)  

quantile(salaire,0.99)  # quantile à 99%

quantile(salaire,0.2) # quantile à 20%

# QUATRIEME PARTIE - Les fonctions sample(), table(),
# prop.table() , unique(), sort()

vect2=c(1,2,3,4,5,6)

# (size=), la deuxième partie du sample() spécifie le nombre 
# d'éléments à ramener du vecteur précisé dans le premier 
# paramètre 
sample(vect2 , size = 1) # ici je suppose qu'on a mi "size=1" 
# car quand on lance un dé ça nous ramène qu'un seul chiffre 
# il y a aussi un troisième paramètre qui permet de spécifier
# s'il s'agit d'un tirage (:ou d'un lancer) avec remise ou pas 


simulation <- sample(x = c(1,2,3,4,5,6), size = 12, replace = TRUE)
print(simulation)
# size= nb de fois aussi 
# true=tirage avec remise 

unique(simulation) # sans répétition il affiche les valeurs

nb=table(simulation)# compte le nombre d'apparition de chaque face 
sort(simulation ,decreasing = TRUE) # trier dans l'ordre décroissant 

prop.table(table(simulation))


simulation <- sample(x = c(1,2,3,4,5,6), size = 100000,
                     replace = TRUE)
frequence <- prop.table( table(simulation) )
sort(frequence, decreasing = TRUE)
print("Oui, d'après la loi des grands nombres, 
      les probabilités d'obtenir chacune des 
      faces se rapprochent des probabilités théoriques.")






######### TP1


# Exercice 1 - Utilisation d'un dataframe existant 

df=iris  # iris est un " jeu de données"
class(iris)

View(iris) # VEUILLER A BIEN ECRIRE " View" avec un "V" en majuscule

nrow(iris) # affiche le nombre de ligne 

ncol(iris) # affiche le nombre de colonne

colnames(iris)  # affcihe le nom des colonnes( les entêtes)

summary(df)  # résumé du dataframe


iris[ ,c("Sepal.Length","Species")]  # afficher toutes les lignes 
# mais uniquement les colonnes Sepal.length et Species

iris[c(100,103,105),]  # affciher uniquement les lignes 100,103 et 105
# mais avec toutes les colonnes 

iris[c(50:100),] # toutes les colonnes mmais lignes de 50 à 100

mean(iris$Sepal.Length)  # " $ " le signe du dollard permet
# d'accéder à une des  colonnes d'un dataframe (jeu de données)

median(iris$Sepal.Width)

sd(iris$Petal.Length)  # écart type de la variable "Petal.Length "

quantile(iris$Petal.Width,seq(0.1,0.9,0.1)) # les déciles d'une variable

# Exercice 2 - Import/Exporter un dataframe

# PREMIERE PARTIE - La fonction read.csv()

dfManga=read.csv("C:/Users/murie/Downloads/manga.csv",header=TRUE,sep=",")
dfAnime=read.csv("C:/Users/murie/Downloads/anime.csv",header=TRUE,sep=",")
class(dfManga)
class(dfAnime)

View(dfAnime)
View(dfManga)

dim(dfAnime)
dim(dfManga)  # ramène le nombre de lignes, de colonnes 

mean(dfAnime$Score)
mean(dfManga$Score)

sum(dfAnime$Vote)
sum(dfManga$Vote)

quantile(dfAnime$Score,seq(0.1,0.9,0.1))
quantile(dfManga$Score,seq(0.1,0.9,0.1))

# DEUXIEME PARTIE - Les fonctions subset(), table() et prop.table()

# la fonction " SUBSET " permet de faire des filtres 

# 1- Filtre sur les Mangas

subset(dfManga,Score>9) 
nrow(subset(dfManga,Score>9))  
# nb de mangas ayant un score supérieur à " 9 "

subset(dfManga,Vote>=200000 )
nrow(subset(dfManga,Vote>=200000 ))

subset(dfManga,Vote > 200000 & Score > 8)
nrow(subset(dfManga,Vote > 200000 & Score > 8)) # on utilise le "&" 
#de concaténation s'il y a beaucoup de contraintes

subset(dfManga, Score >= 7 & Score <= 8)
nrow(subset(dfManga, Score >= 7 & Score <= 8))  
# Score compris entre 7 et 8 



# 2- filtre sur les Animés

# " TABLE " permet de compter de façon distincte 
# l'effectif de chaque modalité d'une variable

table(dfAnime$Rating) # ramène les effectifs de chaque modalité de la variable
nrow(table(dfAnime$Rating)) # nombre de modalités de la variable
prop.table(table(dfAnime$Rating)) # eff en pourcentage

subset(dfAnime,Rating=="R - 17+ (violence & profanity)")
nrow(subset(dfAnime,Rating=="R - 17+ (violence & profanity)")) 
# nb d'animés concerné par la modalité "R - 17+ (violence & profanity)" 
# de la variable " Rating "


subset(dfAnime,Rating=="R - 17+ (violence & profanity)" & Score > 8)
nrow(subset(dfAnime,Rating=="R - 17+ (violence & profanity)" & Score > 8))

extraction4 <- subset(dfAnime, Rating != "R - 17+ (violence & profanity)")
nrow(extraction4) 
# Le nb d'Anime ne correspondant pas au 
# Rating : R - 17+ (violence & profanity) 

extraction5 <- subset(dfAnime, Rating %in% 
                        c("PG - Children","G - All Ages"))
nrow(extraction5)
# " %in% " Vérifie si une valeur est présente 
# dans un vecteur ou une liste.


extraction6 <- subset(dfAnime, !Rating %in% 
                        c("PG - Children","G - All Ages"))
nrow(extraction6)
# Vérifie qu'une valeur n'est pas  présente 
# dans un vecteur ou une liste.

# l'opérateur logique " OU " correspond à " | " qui est un trait 
# droit et verticale 

# TROISIEME PARTIE - Les fonctions rbind() et write.table()

dfAnime <- dfAnime[ , c("Title","Score","Vote","Ranked")]
dfManga <- dfManga[ , c("Title","Score","Vote","Ranked")]

dfAnime$Type <- "Anime"
dfManga$Type <- "Manga"  # créer une colonne " Type " avec pour valeur " manga "

dfConcat=rbind(dfManga,dfAnime)
View(dfConcat)

write.table(x = dfConcat, file = ".../.../.../ExportTp1.csv",
            sep = ";",row.names = FALSE)
# permet d'exporter le dataframe dans un fichier csv nommée 
# ExportTp1.csv avec la fonction write.table.











# ####################################  TD2



#### MON TRAVAIL 

# Exercice 1 - Importer des données
# Les fonctions getwd(),setwd() et read.csv()

# Afficher le répertoire de travail actuel
getwd()

# Changer le répertoire de travail actuel vers le dossier contenant les datasets
setwd("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset")

# Afficher le nouveau répertoire de travail
getwd()

# Importer les données des fichiers CSV dans des dataframes
bodies_karts <- read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/bodies_karts.csv", header = TRUE, sep = ";")
tires <- read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/tires.csv", header = TRUE, sep = " ")
gliders <- read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/gliders.csv", header = TRUE, sep = "|")
drivers <- read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/drivers.csv", header = TRUE, sep = ";")

# Afficher les dimensions de chaque dataframe
dim(bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)

# Exercice 2 - Statistique
# PREMIERE PARTIE - Les fonctions cor(), corrplot(), install.packages() et plot()

# Afficher un résumé des données de chaque dataframe
summary(bodies_karts)
summary(tires)
summary(gliders)
summary(drivers)

# Tracer un graphique de dispersion pour Weight vs Acceleration des drivers
plot(x = drivers$Weight,
     y = drivers$Acceleration, 
     main = "Drivers : Weight / Acceleration")

# Calculer la matrice de corrélation des drivers et l'afficher
matriceCor = cor(drivers[, -1])
matriceCor = round(matriceCor, 2)
View(matriceCor)

# Installer et charger le package corrplot pour visualiser la matrice de corrélation
install.packages("corrplot")
library(corrplot)

# Afficher la matrice de corrélation des drivers avec corrplot
corrplot(matriceCor, method = "circle")

# Calculer et afficher la matrice de corrélation des tires, bodies_karts et gliders avec corrplot
matriceCor_tires = round(cor(tires[, -1]), 1)
matriceCor_bodies_karts = round(cor(bodies_karts[, -1]), 1)
matriceCor_gliders = round(cor(gliders[, -1]), 1)

corrplot(matriceCor_tires, method = "color", type = "upper", order = "hclust", 
         addCoef.col = "black", tl.col = "black", tl.srt = 45, diag = FALSE)

corrplot(matriceCor_bodies_karts, method = "color", type = "upper", order = "hclust", 
         addCoef.col = "black", tl.col = "black", tl.srt = 45, diag = FALSE)

corrplot(matriceCor_gliders, method = "color", type = "upper", order = "hclust", 
         addCoef.col = "black", tl.col = "black", tl.srt = 45, diag = FALSE)

# Exercice 3 - Manipulation de data frame
# Extraction de colonnes spécifiques et de lignes spécifiques

# Sélectionner les colonnes "Driver" et "Weight" du dataframe drivers et afficher le résultat
resultat = drivers[, c("Driver", "Weight")]
View(resultat)

# Sélectionner les colonnes "Driver" et "Acceleration" des dix premières lignes du dataframe drivers et afficher le résultat
resultat = drivers[1:10, c("Driver", "Acceleration")]
View(resultat)

# Supprimer les colonnes 5, 7 et 9 du dataframe drivers et afficher le résultat
resultat = drivers[, -c(5, 7, 9)]
View(resultat)

# Supprimer les colonnes "Weight" et "Acceleration" du dataframe drivers et afficher le résultat
resultat = drivers[, -c("Weight", "Acceleration")]
View(resultat)

# Sélectionner les colonnes "Driver", "Acceleration" et "Weight" du dataframe drivers et afficher le résultat
resultat = drivers[, c("Driver", "Acceleration", "Weight")]
View(resultat)

# Sélectionner les lignes 3, 12 et 32 du dataframe drivers et afficher le résultat
resultat = drivers[c(3, 12, 32), ]
View(resultat)

# Sélectionner les lignes 32, 3 et 12 du dataframe drivers et afficher le résultat
resultat = drivers[c(32, 3, 12), ]
View(resultat)

# Ordonner les lignes du dataframe drivers par la colonne "Weight" et afficher le résultat
rang = order(drivers$Weight)
resultat = drivers[rang, c("Driver", "Weight")]
View(resultat)

# Ordonner les lignes du dataframe drivers par la colonne "Acceleration" de manière décroissante et afficher le résultat
rang = order(drivers$Acceleration, decreasing = TRUE)
resultat = drivers[rang, c("Driver", "Acceleration")]
View(resultat)

# Ordonner les lignes du dataframe drivers par la colonne "Acceleration" de manière décroissante et ensuite par la colonne "Weight" de manière croissante et afficher le résultat
rang = order(drivers$Acceleration, drivers$Weight, decreasing = c(TRUE, FALSE))
resultat = drivers[rang, c("Driver", "Acceleration", "Weight")]
View(resultat)

# Exercice 4 - GOAT
# Utilisation de la fonction subset() pour extraire les lignes avec les valeurs maximales de Acceleration

# Extraire le driver ayant la valeur maximale de Acceleration et afficher le résultat
topDriver = subset(x = drivers, subset = Acceleration == max(Acceleration), select = c("Driver", "Acceleration"))

# Extraire le glider ayant la valeur maximale de Acceleration et afficher le résultat
topGlider = subset(x = gliders, subset = Acceleration == max(Acceleration), select = c("Glider", "Acceleration"))

# Extraire le tire ayant la valeur maximale de Acceleration et afficher le résultat
topTires = subset(x = tires, subset = Acceleration == max(Acceleration), select = c("Tire", "Acceleration"))

# Extraire le body ayant la valeur maximale de Acceleration et afficher le résultat
topBody = subset(x = bodies
                 
                 
                 
                 
                 
                 
                 
                 # CORRECTION PROF
                 # Exercice 1 - Importer des données
                 # Les fonctions getwd(),setwd() et read.csv()
                 
                 getwd() # afficher le répertoire courant par défaut 
                 
                 setwd("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset")
                 # --> Permet de changer le répertoire courant par défaut de votre session RStudio
                 # avec la fonction setwd() pour pointer sur le dossier avec vos datasets.
                 #Puis vérifier le bon changement du répertoire avec la fonction getwd().
                 
                 # Il est possible de faire exactement 
                 #la même chose avec le raccourci clavier CTRL + SHIFT + H.
                 getwd()
                 
                 bodies_karts=read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/bodies_karts.csv",header=TRUE,sep=";")
                 tires=read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/tires.csv",header=TRUE,sep=" ")
                 gliders=read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/gliders.csv",header = TRUE,sep="|")
                 drivers=read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE/Dataset/drivers.csv",header = TRUE,sep=";")
                 
                 dim(bodies_karts) # pour afficher la dimension(nb lignes-nb colonnes)
                 dim(tires)
                 dim(gliders)
                 dim(drivers)
                 
                 # Exercice 2 - Statistique
                 
                 # PREMIERE PARTIE - Les fonctions cor(), corrplot(), 
                 # install.packages() et plot()
                 
                 summary(bodies_karts)
                 summary(tires)
                 summary(gliders)
                 summary(drivers)  # résumé des données de chaque dataset
                 
                 
                 
                 
                 plot(x = drivers$Weight,
                      y = drivers$Acceleration, 
                      main = "Drivers : Weight / Acceleration") # "main" permet 
                 # de spécifier le titre du graphique 
                 #Il semble que les deux variables soient corrélées négativement
                 #Il y a autant de points mais ils sont superposés car certains drivers ont les mêmes statistiques
                 
                 matriceCor = cor(drivers[ , - 1])
                 matriceCor = round(matriceCor , 2)
                 View(matriceCor)
                 #Toutes les variables semblent fortement corrélées entre elles
                 
                 #commande à executer qu'une seule fois
                 install.packages("corrplot")
                 
                 library(corrplot) #je charge mon package pour pouvoir utiliser ses fonctionalités
                 corrplot(matriceCor, method="circle")
                 
                 matriceCor = round(cor(tires[ , - 1]),1)
                 corrplot(matriceCor, method="color",  
                          type="upper", order="hclust", 
                          addCoef.col = "black", # Ajout du coefficient de corrélation
                          tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
                          # Cacher les coefficients de corrélation sur la diagonale
                          diag=FALSE 
                 )
                 
                 matriceCor = round(cor(bodies_karts[ , - 1]),1)
                 corrplot(matriceCor, method="color",  
                          type="upper", order="hclust", 
                          addCoef.col = "black", # Ajout du coefficient de corrélation
                          tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
                          # Cacher les coefficients de corrélation sur la diagonale
                          diag=FALSE 
                 )
                 matriceCor = round(cor(gliders[ , - 1]),1)
                 corrplot(matriceCor, method="color",  
                          type="upper", order="hclust", 
                          addCoef.col = "black", # Ajout du coefficient de corrélation
                          tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
                          # Cacher les coefficients de corrélation sur la diagonale
                          diag=FALSE 
                 )
                 
                 # Exercice 3 - Manipulation de data frame
                 resultat = drivers[ , c("Driver" , "Weight")]
                 View(resultat)
                 
                 resultat = drivers[ 1:10 , c("Driver" , "Acceleration")]
                 View(resultat)
                 
                 resultat = drivers[ , -c(5,7,9)]
                 View(resultat)
                 
                 resultat = drivers[ , -c("Weight","Acceleration")] #cela fonctionne uniquement sur des index numériques.
                 resultat = drivers[ , -c(2,3)]
                 
                 resultat = drivers[ , c("Driver", "Acceleration", "Weight")]
                 View(resultat)
                 #Les colonnes sont dans l'ordre défini par le vecteur.
                 
                 resultat = drivers[ c(3,12,32) , ]
                 View(resultat)
                 
                 resultat = drivers[ c(32,3,12) , ]
                 View(resultat)
                 #Les lignes sont dans l'ordre défini par le vecteur.
                 
                 rang = order(drivers$Weight)
                 resultat = drivers[ rang  , c("Driver", "Weight") ]
                 View(resultat)
                 
                 rang = order(drivers$Acceleration, decreasing = TRUE)
                 resultat = drivers[ rang  , c("Driver", "Acceleration") ]
                 View(resultat)
                 
                 rang = order(drivers$Acceleration, drivers$Weight, decreasing = c(TRUE,FALSE))
                 resultat = drivers[ rang  , c("Driver", "Acceleration","Weight") ]
                 View(resultat)
                 
                 #Exercice 4 - GOAT
                 
                 help(subset)
                 topDriver = subset(x = drivers,
                                    subset = Acceleration == max(Acceleration), 
                                    select = c("Driver","Acceleration"))
                 
                 topGlider = subset(x = gliders,
                                    subset = Acceleration == max(Acceleration), 
                                    select = c("Glider","Acceleration"))
                 
                 topTires = subset(x = tires,
                                   subset = Acceleration == max(Acceleration), 
                                   select = c("Tire","Acceleration"))
                 
                 topBody = subset(x = bodies_karts,
                                  subset = Acceleration == max(Acceleration), 
                                  select = c("Body","Acceleration"))
                 
                 
              
                 
                 
                 
# TP2
                 
                 
                 
                 
                 # import du jeu de données fao avec read csv
                 df=read.csv("C:/Users/murie/OneDrive/Documents/ECOLE_MURIEL_RITA/PROGRAMMATION_STATISTIQUE_S2/fao.csv",sep=";",dec=",")
                 # nb de pays dans ce dataset
                 nrow(df)
                 # resumé des données
                 summary(df)
                 # STATISTIQUE DESCRIp.
                 # disponibilité alimentaire moyenne mondiale
                 mean(df$Dispo_alim,na.rm=TRUE)
                 sum(df$Population,na.rm=TRUE)
                 sd(df$Import_viande,na.rm=TRUE)
                 median(df$Prod_viande,na.rm=TRUE)
                 quantile(df$Dispo_alim)
                 #centiles du volume d’importation de viande.
                 
                 quantile(df$Import_viande,seq(0,1,0.01))
                 
                 # extraire les lignes du dataset avec les 5 pays les moins peuplés.
                 # head() -->renvoie les premiere lignes
                 max(order(df$Population))
                 View(head(df[order(df$Population),],n=5))
                 View(head(df[order(df$Prod_viande,na.last=FALSE),],n=5))
                 order(df$Prod_viande,decreasing= TRUE)
                 View(head(df[order(df$Prod_viande,decreasing=TRUE),],n=5))
                 
                 imp=order(df$Import_viande,decreasing = TRUE)
                 View(head(df[imp,],n=5))
                 
                 
                 # En moyenne, le besoin énergétique moyen d’une adulte est 
                 #de 2300 kcal par jour. Construire une requête pour extraire les 
                 #lignes du dataset avec les pays qui ont une disponibilité 
                 #alimentaire supérieure ou égale à 2300 kcal. Combien de pays sont concernés ?
                 
                 View(subset(df,df$Dispo_alim >= 2300 ))
                 
                 
                 resultat = subset(df, Dispo_alim > 3500  & Import_viande > 1000)
                 View(resultat)
                 #extraire les lignes du dataset avec la France et la Belgique.
                 subset(df,df$Nom %in% c("France","Belgique"))
                 
                 
                 # EXERCICE 4 - Modifier le dataframe
                 df$part_export=df$Export_viande/df$Prod_viande
                 View(df)
                 
                 
                 df$dispo_alim_pays=df$Dispo_alim*df$Population
                 
                 write.table(df,file="ExportTp2.csv")  # pour Exporter 
                 # le nouveau dataframe dans un fichier csv nommé ExportTp2.csv
                 #avec la fonction write.table()
                 
                 sum(df$dispo_alim_pays,na.rm=TRUE)
                 dispo_alim_mondiale/2300
                 
                 #Exercice 5 - Corrélation
                 
                 plot(x = df$Prod_viande,
                      y = df$Export_viande, 
                      main = "Pays : Prod_viande / Export_viande")
                 
                 cor(x = df$Prod_viande,
                     y = df$Export_viande)
                 
                 matriceCor = cor(df[ , - 1] , use = "complete.obs")
                 matriceCor = round(matriceCor , 2)
                 View(matriceCor)
                 
                 #commande à executer qu'une seule fois
                 install.packages("corrplot")
                 
                 library(corrplot) #je charge mon package pour pouvoir utiliser ses fonctionalités
                 corrplot(matriceCor, method="circle")
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                    
############################ TD3

                 
                 
                 #### MES REPONSES 
                 
                 # Installation du package readxl pour lire les fichiers Excel
                 install.packages("readxl")
                 
                 # Chargement du package readxl
                 library(readxl)
                 
                 # Définition du répertoire de travail
                 setwd("L:/BUT/SD/Promo 2023/mzouzzou/PROGRAMMATION_STATISTIQUE/TD3")
                 
                 # Lecture du fichier Excel "pokemon.xlsx" depuis le répertoire de travail, de la feuille "pokemon"
                 pokemon <- read_excel(path = "pokemon.xlsx", sheet = "pokemon")
                 
                 # Affichage du nombre de lignes dans le dataframe pokemon
                 nrow(pokemon)
                 
                 # Affichage du nombre de colonnes dans le dataframe pokemon
                 ncol(pokemon)
                 
                 # Affichage d'un résumé statistique du dataframe pokemon
                 summary(pokemon)
                 
                 # Conversion de certaines colonnes en facteurs
                 pokemon$is_legendary <- as.factor(pokemon$is_legendary)
                 pokemon$generation <- as.factor(pokemon$generation)
                 pokemon$type <- as.factor(pokemon$type)
                 
                 # Affichage d'un résumé statistique mis à jour du dataframe pokemon après la conversion en facteurs
                 summary(pokemon)
                 
                 # Calcul de la médiane de la colonne "attack"
                 med = median(pokemon$attack)
                 
                 # Création d'une nouvelle colonne "attack_group" en fonction de la médiane de "attack"
                 pokemon$attack_group = ifelse(pokemon$attack >= med, "attack+", "attack-")
                 
                 # Conversion de la colonne "attack_group" en facteur
                 pokemon$attack_group <- as.factor(pokemon$attack_group)
                 
                 # Affichage d'un résumé statistique de la nouvelle colonne "attack_group"
                 summary(pokemon$attack_group)
                 
                 # Création d'une nouvelle colonne "water_fire" indiquant si le pokemon est de type "water" ou "fire"
                 pokemon$water_fire <- ifelse(pokemon$type %in% c("water", "fire"), "yes", "no")
                 
                 # Conversion de la colonne "water_fire" en facteur
                 pokemon$water_fire <- as.factor(pokemon$water_fire)
                 
                 # Affichage d'un résumé statistique de la nouvelle colonne "water_fire"
                 summary(pokemon$water_fire)
                 
                 # Calcul des quantiles du dataframe pokemon
                 q3_attack = quantile(pokemon$attack, probs = 0.75)
                 q3_defense = quantile(pokemon$defense, probs = 0.75)
                 q3_speed = quantile(pokemon$speed, probs = 0.75)
                 
                 # Création d'une nouvelle colonne "best" indiquant si le pokemon est dans le top quartile pour "attack", "defense" et "speed"
                 pokemon$best = ifelse(pokemon$attack > q3_attack &
                                         pokemon$defense > q3_defense &
                                         pokemon$speed > q3_speed , "yes", "no")
                 
                 # Conversion de la colonne "best" en facteur
                 pokemon$best <- as.factor(pokemon$best)
                 
                 # Affichage d'un résumé statistique de la nouvelle colonne "best"
                 summary(pokemon$best)
                 
                 # Sélection des lignes avec des valeurs manquantes dans la colonne "weight_kg"
                 requete = subset(pokemon, is.na(weight_kg))
                 
                 # Affichage des données avec des valeurs manquantes dans la colonne "weight_kg"
                 View(requete)
                 
                 # Sélection des lignes sans valeurs manquantes dans la colonne "weight_kg"
                 requetee = subset(pokemon, !is.na(weight_kg))
                 
                 # Affichage des données sans valeurs manquantes dans la colonne "weight_kg"
                 View(requetee)
                 
                 # Calcul de la médiane de la colonne "weight_kg" en ignorant les valeurs manquantes
                 med_weight_kg = median(pokemon$weight_kg, na.rm = TRUE)
                 
                 # Remplacement des valeurs manquantes dans la colonne "weight_kg" par la médiane calculée
                 pokemon$weight_kgNA = ifelse(is.na(pokemon$weight_kg), med_weight_kg, pokemon$weight_kg)
                 
                 # Calcul de la médiane de la colonne "height_m" en ignorant les valeurs manquantes
                 med_height_m = median(pokemon$height_m, na.rm = TRUE)
                 
                 # Remplacement des valeurs manquantes dans la colonne "height_m" par la médiane calculée
                 pokemon$height_mNA = ifelse(is.na(pokemon$height_m), med_height_m, pokemon$height_m)
                 
                 # Création d'une nouvelle colonne "weight_group" en regroupant les valeurs de "weight_kg" en trois groupes
                 pokemon$weight_group = cut(pokemon$weight_kg, breaks = 3, labels = c("léger", "moyen", "lourd"))
                 
                 # Création d'une nouvelle colonne "height_m_group" en regroupant les valeurs de "height_m" en quatre groupes
                 pokemon$height_m_group = cut(pokemon$height_m, breaks = c(0,1,2,3, max(pokemon$height_m, na.rm = TRUE)))
                 
                 # Création d'une nouvelle colonne "defense_group" en regroupant les valeurs de "defense" en groupes basés sur les quantiles
                 pokemon$defense_group = cut(pokemon$defense, breaks = quantile(pokemon$defense, na.rm = TRUE), include.lowest = TRUE)
                 
                 # Affichage d'un résumé statistique de la nouvelle colonne "defense_group"
                 summary(pokemon$defense_group)
                 
                 # Agrégation des données pour calculer la moyenne de "attack" par "type"
                 aggregate(x = attack ~ type, data = pokemon, FUN = function(x) mean(x))
                 
                 # Agrégation des données pour calculer la médiane de "attack" par "generation" et "type"
                 aggregate(x = attack ~ generation + type, data = pokemon, FUN = function(x) median(x))
                 
                 # Agrégation des données pour compter le nombre de pokemons par "type"
                 aggregate(x = pokedex_number ~ type, data = pokemon, FUN = function(x) length(x))
                 
                 # Agrégation des données pour calculer la moyenne, la médiane et le nombre de pokemons par "generation" et "type" pour "speed"
                 aggregate(speed ~ generation + type, data = pokemon, FUN = function(x) c(moy = mean(x), med = median(x), eff = length(x)))
                 
                 
                 
                 
                 ### CORRECTION PROF
                 # Les fonctions read_excel() et as.factor()
                 
                 
                 install.packages("readxl")
                 library(readxl)
                 setwd("L:/BUT/SD/Promo 2023/mzouzzou/PROGRAMMATION_STATISTIQUE/TD3")
                 pokemon <- read_excel(path = "pokemon.xlsx",sheet = "pokemon")
                 
                 nrow(pokemon)
                 ncol(pokemon)
                 
                 
                 summary(pokemon)
                 
                 as.factor(c("generation","is_legendary","type"))
                 pokemon$is_legendary <-as.factor(pokemon$is_legendary)
                 pokemon$generation <-as.factor(pokemon$generation)
                 pokemon$type <-as.factor(pokemon$type)
                 
                 summary(pokemon)
                 
                 
                 # Exercice 2 - Création de colonne
                 # col=pokemon$attack_group
                 
                 med = median(pokemon$attack)
                 pokemon$attack_group = ifelse(pokemon$attack >= med, "attack+","attack-")
                 pokemon$attack_group <-as.factor(pokemon$attack_group)
                 summary(pokemon$attack_group)
                 
                 pokemon$water_fire=ifelse(pokemon$type%in% c("water","fire"),"yes","no")
                 pokemon$water_fire=as.factor(pokemon$water_fire)
                 summary(pokemon$water_fire)
                 
                 q3_attack = quantile(pokemon$attack, probs = 0.75)
                 q3_defense = quantile(pokemon$defense, probs = 0.75)
                 q3_speed = quantile(pokemon$speed, probs = 0.75)
                 pokemon$best = ifelse(pokemon$attack > q3_attack &
                                         pokemon$defense > q3_defense &
                                         pokemon$speed > q3_speed , "yes","no")
                 pokemon$best <-as.factor(pokemon$best)
                 summary(pokemon$best)
                 
                 
                 # La fonction is.na()
                 
                 requete = subset(pokemon, is.na(weight_kg))
                 View(requete)
                 
                 requetee=subset(pokemon,!is.na(weight_kg))
                 View(requetee)
                 
                 med_weight_kg = median(pokemon$weight_kg, na.rm = TRUE)
                 pokemon$weight_kgNa = ifelse(is.na(pokemon$weight_kg) , 
                                              med_weight_kg ,
                                              pokemon$weight_kg)
                 
                 med_height_m = median(pokemon$height_m, na.rm = TRUE)
                 pokemon$height_mNA = ifelse(is.na(pokemon$height_m) , 
                                             med_height_m ,
                                             pokemon$height_m)
                 
                 # La fonctions cut()
                 
                 pokemon$weight_group = cut(pokemon$weight_kg,
                                            breaks = 3,
                                            labels = c("léger","moyen","lourd"))
                 
                 
                 
                 pokemon$height_m_group = cut(pokemon$height_m,
                                              breaks = c(0,1,2,3,
                                                         max(pokemon$height_m,
                                                             na.rm = TRUE)))
                 
                 
                 pokemon$defense_group = cut(pokemon$defense,
                                             breaks = quantile(pokemon$defense,
                                                               na.rm = TRUE),
                                             include.lowest = TRUE)
                 summary(pokemon$defense_group)
                 
                 
                 #Exercice 3 - Agregation
                 
                 aggregate(x = attack ~ type, 
                           data = pokemon,
                           FUN = function(x) mean(x))
                 
                 aggregate(x = attack ~ generation + type,
                           data = pokemon, 
                           FUN = function(x) median(x))
                 
                 aggregate(x = pokedex_number ~ type,
                           data = pokemon,
                           FUN = function(x) length(x))
                 
                 aggregate(speed ~ generation + type,
                           data = pokemon, 
                           FUN = function(x) c(moy = mean(x),
                                               med = median(x),
                                               eff = length(x) ) )
        
                 
                 
                 
                 
###### TP 3 = TP noté (examen)         
                 


############################TD4
                 
                 
                 # Exercice 1 - Importer les données
                 
                 #Importer le jeu de données velov.csv à l’aide de la fonction read.csv()
                 df=read.csv("C:/Users/mzouzzou/Downloads/velov.csv",header=TRUE,sep=";",dec=",")
                 summary(df)
                 as.factor(df$status)
                 as.factor(df$CodePostal)
                 nrow(df)
                 df$bornes=ifelse(df$capacity != (df$bikes + df$stands), "KO" , "OK")
                 table(df$bornes)
                 
                 # Exercice 2 - L'histogramme
                 # La fonction hist()
                 
                 hist(df$capacity,main="la distribution des capacity")
                 # histogramme avec 6 classes (breaks)
                 hist(df$capacity,main="la distribution des capacity",breaks = 6)
                 hist(df$capacity,main="la distribution des capacity",breaks = 6,col = "red")
                 hist(df$capacity,main="la distribution des capacity",breaks = 6,col = "red",xlab = "Capacity")
                 
                 # La fonction abline()
                 
                 hist(df$capacity,main="la distribution des capacity",breaks = 6,col = "red",xlab = "Capacity")
                 abline(h=100, col="blue",lty=2)
                 
                 
                 
                 
                 
                 # Les fonctions hist(), lines() et density()
                 
                 ## density(df$capacity)
                 
                 hist(x = df$capacity, main = "Distribution de \n la capacité des stations",col = "red",probability = TRUE,xlab = "Capacity")
                 lines(density(df$capacity),
                       lty = 2,
                       col = "blue",
                       lwd = 4)
                 
                 hist(x = df$capacity, 
                      main = "Distribution de \n la capacité des stations",
                      col = "red",
                      probability = TRUE,
                      xlab = "Capacity",
                      ylim = c(0,0.08))
                 
                 lines(density(df$capacity),
                       lty = 2,
                       col = "blue",
                       lwd = 2)
                 
                 # Exercice 3 - Le boxplot
                 # La fonction boxplot()
                 
                 boxplot(df$capacity)
                 boxplot(x = df$capacity, 
                         main = "Boxplot de \n la capacité des stations",
                         horizontal = TRUE)
                 boxplot(x = df$capacity, 
                         main = "Boxplot de \n la capacité des stations",
                         horizontal = FALSE,
                         outline = FALSE) # en n'affichant pas les valeurs atypiques.
                 
                 points(mean(df$capacity), col = "red", pch = 15, cex = 2)
                 
                 #La fonction par()
                 
                 par(mfrow=c(1,2)) #fenêtre sur 1 ligne et 2 colonnes
                 #7ème
                 df7 = subset(df, CodePostal == "69007")
                 boxplot(x = df7$bikes, 
                         main = "Boxplot nb vélos \n 69007",
                         ylim = c(0,40))
                 #8ème
                 df8 = subset(df, CodePostal == "69008")
                 boxplot(x = df8$bikes, 
                         main = "Boxplot nb vélos \n 69008",
                         ylim = c(0,40))
                 #C'est plus simple d'analyser les deux graphiques si la borne des ordonnées est la même.
                 # On remarque que la disponibilité des stations est plus homogènes sur le 8ème.
                 
                 
                 par(mfrow=c(1,1)) #fenêtre sur 1 ligne et 1 colonne
                 # Tracer le graphique boxplot
                 boxplot(formula = bikes ~ bonus,
                         data = df, 
                         main = "Dispo vélos vs Stations Bonus")
                 
                 # Calculer les moyennes de chaque groupe
                 means <- tapply(X = df$bikes, 
                                 INDEX = df$bonus, 
                                 FUN = function(X) mean(X))
                 print(means)
                 # Ajouter les moyennes de chaque groupe au graphique
                 points(means, col = "red", pch = 19)
                 
                 # Exercice 4 - Le diagramme
                 # Les fonctions barplot() et table()
                 
                 barplot(table(df$bonus),main ="réparition du nombre de station ")
                 barplot(table(df$bonus),main ="réparition du nombre de station ",horiz = TRUE)
                 
                 # Les fonctions barplot() ,prop.table() et legend()
                 
                 barplot(prop.table(table(df$bonus)),mean="réparition du nombre de station ",horiz = TRUE)
                 
                 effectif = table(df$banking, df$bonus)
                 print(effectif)
                 barplot(height = effectif,
                         main = "Bonus vs Banking",
                         xlab = "Station Bonus ?")
                 #On remarque qu'on ne sait pas distinguer les deux modalités car il n'y a pas de légende.
                 
                 #Calcul des pourcentages
                 frequence = prop.table(x = effectif)
                 barplot(height = frequence,
                         main = "Bonus vs Banking",
                         xlab = "Station Bonus ?",
                         col = c("red","green"))
                 
                 #Préparer les labels
                 legend_labels <- colnames(frequence)
                 #Ajouter une légende
                 legend(x = "topright", 
                        legend = legend_labels, 
                        fill  = c("red","green"))
                 
                 #Afficher les fréquences pour vérifier le graphique
                 print(frequence)
                 
                 #Calcul des pourcentages colonnes
                 frequence = prop.table(x = effectif, margin = 2)
                 barplot(height = frequence,
                         main = "Bonus vs Banking",
                         xlab = "Station Bonus ?",
                         col = c("red","green"))
                 
                 #Préparer les labels
                 legend_labels <- colnames(frequence)
                 #Ajouter une légende
                 legend(x = "topright", 
                        legend = legend_labels, 
                        fill  = c("red","green"))
                 
                 #Afficher les fréquences pour vérifier le graphique
                 print(frequence)
                 
                 #Calcul des pourcentages colonnes
                 frequence = prop.table(x = effectif, margin = 2)
                 barplot(height = frequence,
                         main = "Bonus vs Banking",
                         xlab = "Station Bonus ?",
                         col = c("red","green"),
                         beside = TRUE)
                 
                 #Préparer les labels
                 legend_labels <- colnames(frequence)
                 #Ajouter une légende
                 legend(x = "topright", 
                        legend = legend_labels, 
                        fill  = c("red","green"))
                 
                 #Afficher les fréquences pour vérifier le graphique
                 print(frequence)
                 
                 # Les fonctions pie() et paste()
                 
                 pie(x = effectif,
                     main = "Répartition du nombre \n de station bonus",
                     col = c("yellow","green"))
                 etiquette = paste(rownames(effectif),"\n",effectif)
                 pie(x = effectif,
                     main = "Répartition du nombre \n de station bonus",
                     col = c("yellow","green"),
                     labels = etiquette)
                 
                 # Les fonctions palette() et colors()
                 
                 effectif = table(df$CodePostal)
                 top10 = sort(effectif, decreasing = TRUE)[1:10]
                 barplot(height = top10,
                         main = "Top 10 sur le \n nombre de station",
                         col = palette(),
                         las = 2)  # Rotation des étiquettes à 90 degrés
                 #On remarque que les deux premières couleurs se répetent.
                 print(palette()) # on remarque que la fonction `palette()` ne dispose que de 8 couleurs
                 
                 effectif = table(df$CodePostal)
                 top10 = sort(effectif, decreasing = TRUE)[1:10]
                 barplot(height = top10,
                         main = "Top 10 sur le \n nombre de station",
                         col = colors(),
                         las = 2)  # Rotation des étiquettes à 90 degrés
                 #On remarque que les deux premières couleurs se répetent.
                 print(colors()) # la fonction `palette()` ne dispose que de 8 couleurs
                 
                 # La fonction dev.print()
                 
                 # dev.print(device = png, file = "Top 10 sur le \n nombre de station.png", width = 600)
                 
                 dev.print(device = png, file = "export.png", width = 600)
                 
                 
                 # Exercice 5 - Nuage de points
                 # La fonction plot()
                 
                 plot(df$stands,df$capacity,mean="corrélation entre le nombre de place disponible sur les stations et leur capacité.")
                 
                 plot(x = df$stands, y = df$capacity,
                      main = "Place disponible vs Capacité",
                      xlim = c(0,60),
                      ylim = c(0,60),
                      pch=19)
                 
                 # Les fonctions plot() et levels()
                 
                 df$bornes = as.factor(df$bornes)
                 plot(x = df$stands, y = df$capacity,
                      main = "Place disponible vs Capacité",
                      xlim = c(0,60),
                      ylim = c(0,60),
                      col = df$bornes,
                      pch=19)
                 
                 # Ajouter une légende
                 legend("topright", legend = levels(df$bornes),
                        col = palette(), pch = 19)
                 
                 myColors <- c("red", "blue", "green")  
                 # Ajoutez plus de couleurs si nécessaire avec le code HTML des couleurs à la place des noms
                 # Pour pouvoir choisir ses couleurs, il suffit d'utiliser un vecteur avec les couleurs qu'on souhaite.
                 # Tracer le graphique
                 plot(x = df$stands, y = df$capacity,
                      main = "Place disponible vs Capacité",
                      xlim = c(0, 60),
                      ylim = c(0, 60),
                      col = myColors[df$bornes],
                      pch = 19)
                 
                 # Ajouter une légende
                 legend("topright", legend = levels(df$bornes),
                        col = myColors, pch = 19)
                 
                 # Ajouter un carré vert sur le graphique représentant la moyenne
                 # du nombre de places disponibles et la capacité des stations.
                 moy_stands = mean(df$stands)
                 moy_capacity = mean(df$capacity)
                 points(x = moy_stands,y = moy_capacity, 
                        pch = 15,
                        col = myColors[3],
                        cex = 2)
                 
                 # Exercice 6 - Cartographie (spoil sur le SD2)
                 
                 # Executer le code suivant pour créer une carte à partir des colonnes 
                 # position_longitude et position_latitude
                 
                 # Librairies nécessaires
                 library(leaflet)
                 library(dplyr)
                 library(ggplot2)
                 
                 # Créer une carte Leaflet
                 maCarte <- leaflet(df) %>% 
                   addTiles() %>% 
                   addMarkers(~position_longitude, 
                              ~position_latitude, 
                              popup = ~address)
                 
                 # Afficher la carte
                 maCarte
                 
                 
                 help(table)
                 
       
                 
                 
                 
                 
                 
                 
############# TP4
                 
                 
                 ####### VOIR LE BAS POUR EXPLICATION DETAILLE DE CHAQUE LIGNE DE CODE 
                 # La commande function()
                 # premiere question 
                 
                 salaire_net_cadre = function(salaire_brut) {
                   
                   salaire_net_avant_impot = salaire_brut * 0.75
                   
                   return(salaire_net_avant_impot) }
                 
                 salaire_net_cadre(salaire_brut = 2600)
                 # deuxieme question 
                 
                 salaire_net_cadre = function(salaire_brut=2500) {
                   
                   salaire_net_avant_impot = salaire_brut * 0.75
                   
                   return(salaire_net_avant_impot) }
                 
                 salaire_net_cadre()
                 
                 # troisième question
                 
                 salaire_net_cadre = function(salaire_brut = 2500,temps_travail = 1){ if(!is.numeric(salaire_brut )){return ("erreur !")} 
                   salaire_net_avant_impot = salaire_brut * temps_travail
                   return(salaire_net_avant_impot) 
                 }
                 salaire_net_cadre(salaire_brut = 3000,
                                   temps_travail = 0.8)
                 
                 # La commande else() {}
                 # question 6)
                 
                 salaire_net = function(salaire_brut = 2500,temps_travail = 1, statut) {
                   
                   if (!is.numeric(salaire_brut)) {
                     return("Erreur :  le salaire brut doit être une valeur numérique")
                   }
                   
                   if (is.numeric(temps_travail) & (temps_travail >= 0) & (temps_travail <= 1)) {
                     return("Erreur :  le temps de travail doit être une valeur numérique entre 0 et 1")
                   }
                   
                   if (!statut %in% c("cadre","non cadre")) {
                     return("Erreur :  le statut doit être cadre ou non cadre")
                   }
                   
                   if (statut == "cadre") {
                     salaire_net_avant_impot = salaire_brut * temps_travail * 0.75
                   } else {
                     salaire_net_avant_impot = salaire_brut * temps_travail * 0.78
                   }
                   
                   return(salaire_net_avant_impot) 
                 }
                 #Test de la fonction
                 salaire_net(salaire_brut = 2000, statut = "cadre")
                 salaire_net(salaire_brut = 2000, statut = "non cadre")
                 salaire_net(salaire_brut = 2000, statut = "technicien")
                 
                 
                 # La commande else if() {}
                 # question 6)
                 
                 salaire_net = function(salaire_brut = 2500,temps_travail = 1, statut) {
                   
                   if (!is.numeric(salaire_brut)) {
                     return("Erreur :  le salaire brut doit être une valeur numérique")
                   }
                   
                   if (is.numeric(temps_travail) & (temps_travail >= 0) & (temps_travail <= 1)) {
                     return("Erreur :  le temps de travail doit être une valeur numérique entre 0 et 1")
                   }
                   
                   if (!statut %in% c("cadre","non cadre")) {
                     return("Erreur :  le statut doit être cadre ou non cadre")
                   }
                   
                   if (statut == "cadre") {
                     salaire_net_avant_impot = salaire_brut * temps_travail * 0.75
                   } else {
                     salaire_net_avant_impot = salaire_brut * temps_travail * 0.78
                   }
                   
                   if (salaire_net_avant_impot <= 1591) {
                     salaire_net_apres_impot <- salaire_net_avant_impot
                   } else if (salaire_net_avant_impot <= 2006) {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.029)
                   } else if (salaire_net_avant_impot <= 3476) {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.099)
                   } else if (salaire_net_avant_impot <= 8557) {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.20)
                   } else {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.43)
                   }
                   
                   return(salaire_net_apres_impot) 
                 }
                 ###############"
                 
                 shifumi <- function() {
                   # Demander à l'utilisateur de saisir une valeur
                   choix_utilisateur <- readline(prompt = "Choisissez entre pierre, papier ou ciseaux : ")
                   
                   # Vérifier si l'utilisateur a saisi une valeur valide
                   if (choix_utilisateur %in% c("pierre", "papier", "ciseaux")) {
                     # Simuler un choix aléatoire pour l'ordinateur
                     choix_ordi <- sample(c("pierre", "papier", "ciseaux"), 1)
                     
                     # Afficher les choix de l'utilisateur et de l'ordinateur
                     cat("Votre choix :", choix_utilisateur, "\n")
                     cat("Choix de l'ordinateur :", choix_ordi, "\n")
                     
                     # Retourner le résultat du jeu
                     if (choix_utilisateur == choix_ordi) {
                       return("Égalité !")
                     } else if ((choix_utilisateur == "pierre" & choix_ordi == "ciseaux") |
                                (choix_utilisateur == "papier" & choix_ordi == "pierre") |
                                (choix_utilisateur == "ciseaux" & choix_ordi == "papier")) {
                       return("Vous avez gagné !")
                     } else {
                       return("L'ordinateur a gagné !")
                     }
                   } else {
                     return("Valeur invalide. Veuillez choisir entre pierre, papier ou ciseaux.")
                   }
                 }
                 
                 #Test de la fonction
                 
                 shifumi()
                 
                 # Exercice 2 - Création des boucles
                 somme=0
                 for (i in c(1,2,3,4,5)) { 
                   somme=somme+i
                   print(paste("le résultat  de la somme cumulée est :",somme))
                 }
                 
                 
                 
                 element = 1
                 resultat = 0
                 while (resultat <= 50) {
                   resultat = resultat +  element
                   print(paste("le resultat est : ",resultat))
                   print(paste("le programme s'est arrêté à la valeur : ", element))
                   element = element + 1
                 }
                 
                 
                 
                 for (colonne in colnames(iris)) {
                   type_colonne = class(iris[ , colonne])
                   print(paste("la colonne ", colonne, " est de type : ", type_colonne))
                 }
                 
                 
                 
                 # Initialisation de l'indice de colonne
                 indice_colonne <- 1
                 
                 # Tant qu'il reste des colonnes à parcourir dans iris
                 while (indice_colonne <= ncol(iris)) {
                   # Récupération du nom de la colonne
                   nom_colonne <- colnames(iris)[indice_colonne]
                   
                   # Récupération du type de données de la colonne
                   type_colonne <- class(iris[, nom_colonne])
                   
                   # Affichage du résultat
                   print(paste("la colonne ", nom_colonne, " est de type : ", type_colonne))
                   
                   # Passage à la colonne suivante
                   indice_colonne <- indice_colonne + 1
                 }
                 
                 # Exercice 3 - GOAT : Cas pratiques
                 
                 # Boucle pour demander 5 fois un nombre à l'utilisateur
                 for (i in 1:5) {
                   
                   # Demander à l'utilisateur d'entrer un nombre
                   nombre <- readline(prompt = "Entrez le nombre :")
                   nombre <- as.numeric(nombre)
                   
                   # Calculer le carré du nombre
                   carre <- nombre^2
                   
                   # Afficher le carré du nombre
                   print(paste("Le carré de", nombre, "est", carre))
                 }
                 
                 
                 
                 # Chemin du dossier à explorer
                 dossier <- "chemin/vers/le/dossier"
                 
                 # Liste les fichiers dans le dossier spécifié
                 fichiers <- list.files(dossier, full.names = TRUE)
                 
                 # Affiche la taille de chaque fichier
                 for (fichier in fichiers) {
                   info <- file.info(fichier)
                   taille <- info$size
                   cat("Le fichier", basename(fichier), "a une taille de", taille, "octets.\n")
                 }
                 
                 
                 
                 # Parcourir toutes les colonnes du dataframe iris
                 for (colonne in colnames(iris)) {
                   # Vérifier si la colonne est de type numeric
                   if (is.numeric(iris[,colonne])) {
                     # Si c'est le cas, construire un boxplot avec un titre
                     boxplot(iris[,colonne], main = paste("Boxplot de", colonne))
                   } else {
                     # Sinon, construire un barplot avec un titre
                     barplot(table(iris[,colonne]), main = paste("Barplot de", colonne))
                   }
                 }
                 
                 
                 # Boucle while pour jouer au shifumi jusqu'à ce que l'utilisateur décide d'arrêter
                 continuer <- TRUE
                 while (continuer) {
                   # Appeler la fonction shifumi et afficher le résultat
                   resultat <- shifumi()
                   cat("Résultat du jeu :", resultat, "\n")
                   
                   # Demander à l'utilisateur s'il souhaite continuer
                   reponse <- readline(prompt = "Voulez-vous continuer à jouer ? (oui/non) : ")
                   
                   # Vérifier la réponse de l'utilisateur
                   if (tolower(reponse) == "non") {
                     print("Arrêt du jeu.")
                     continuer <- FALSE  # Mettre fin à la boucle
                   }
                 }
                 
                 # Fonction pour le jeu du juste prix
                 juste_prix <- function() {
                   # Génération d'un nombre aléatoire entre 1 et 100
                   nombre_a_deviner <- sample(1:100, 1)
                   
                   # Initialisation de la réponse de l'utilisateur
                   reponse <- -1
                   
                   # Boucle tant que l'utilisateur n'a pas trouvé le bon nombre
                   while (reponse != nombre_a_deviner) {
                     # Demande à l'utilisateur de saisir un nombre
                     reponse <- as.integer(readline(prompt = "Devinez le nombre : "))
                     
                     # Vérifie si le nombre est trop grand, trop petit ou correct
                     if (reponse < nombre_a_deviner) {
                       cat("C'est plus !\n")
                     } else if (reponse > nombre_a_deviner) {
                       cat("C'est moins !\n")
                     } else {
                       cat("Bravo, vous avez trouvé le juste prix !\n")
                     }
                   }
                 }
                 
                 # Appel de la fonction juste_prix pour commencer le jeu
                 juste_prix()
                 
                 
                 
                 ##### EXPLICATION DETAILLE DE CHAQUE LIGNE DE CODE 
                 
                 
                 
                 
                 
                 
                 
                 # Définition d'une fonction pour calculer le salaire net d'un cadre en fonction du salaire brut
                 salaire_net_cadre = function(salaire_brut) {
                   
                   # Calcul du salaire net avant impôt en multipliant le salaire brut par 0.75
                   salaire_net_avant_impot = salaire_brut * 0.75
                   
                   # Retourne le salaire net avant impôt
                   return(salaire_net_avant_impot)
                 }
                 
                 # Appel de la fonction avec un salaire brut de 2600
                 salaire_net_cadre(salaire_brut = 2600)
                 
                 # Redéfinition de la fonction avec une valeur par défaut pour le salaire brut (2500)
                 salaire_net_cadre = function(salaire_brut=2500) {
                   
                   # Calcul du salaire net avant impôt de la même manière que précédemment
                   salaire_net_avant_impot = salaire_brut * 0.75
                   
                   # Retourne le salaire net avant impôt
                   return(salaire_net_avant_impot)
                 }
                 
                 # Appel de la fonction sans spécifier le salaire brut, utilisant la valeur par défaut (2500)
                 salaire_net_cadre()
                 
                 # Redéfinition de la fonction avec deux arguments : salaire_brut et temps_travail, ce dernier ayant une valeur par défaut de 1
                 salaire_net_cadre = function(salaire_brut = 2500, temps_travail = 1) {
                   
                   # Vérification si salaire_brut n'est pas de type numérique, renvoie une erreur si ce n'est pas le cas
                   if (!is.numeric(salaire_brut )) {
                     return ("erreur !")
                   }
                   
                   # Calcul du salaire net avant impôt en fonction du salaire brut et du temps de travail
                   salaire_net_avant_impot = salaire_brut * temps_travail
                   
                   # Retourne le salaire net avant impôt
                   return(salaire_net_avant_impot)
                 }
                 
                 # Appel de la fonction avec un salaire brut de 3000 et un temps de travail de 0.8
                 salaire_net_cadre(salaire_brut = 3000, temps_travail = 0.8)
                 
                 # La fonction salaire_net prend trois arguments : salaire_brut, temps_travail et statut
                 salaire_net = function(salaire_brut = 2500, temps_travail = 1, statut) {
                   
                   # Vérification si salaire_brut n'est pas de type numérique, renvoie une erreur si ce n'est pas le cas
                   if (!is.numeric(salaire_brut)) {
                     return("Erreur :  le salaire brut doit être une valeur numérique")
                   }
                   
                   # Vérification si temps_travail est numérique et compris entre 0 et 1, renvoie une erreur si ce n'est pas le cas
                   if (is.numeric(temps_travail) & (temps_travail >= 0) & (temps_travail <= 1)) {
                     return("Erreur :  le temps de travail doit être une valeur numérique entre 0 et 1")
                   }
                   
                   # Vérification si statut est soit "cadre" soit "non cadre", renvoie une erreur si ce n'est pas le cas
                   if (!statut %in% c("cadre", "non cadre")) {
                     return("Erreur :  le statut doit être cadre ou non cadre")
                   }
                   
                   # Calcul du salaire net avant impôt en fonction du statut (cadre ou non cadre) et d'un taux spécifique
                   if (statut == "cadre") {
                     salaire_net_avant_impot = salaire_brut * temps_travail * 0.75
                   } else {
                     salaire_net_avant_impot = salaire_brut * temps_travail * 0.78
                   }
                   
                   # Si le salaire net avant impôt est inférieur ou égal à certaines valeurs, le taux d'imposition est appliqué
                   if (salaire_net_avant_impot <= 1591) {
                     salaire_net_apres_impot <- salaire_net_avant_impot
                   } else if (salaire_net_avant_impot <= 2006) {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.029)
                   } else if (salaire_net_avant_impot <= 3476) {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.099)
                   } else if (salaire_net_avant_impot <= 8557) {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.20)
                   } else {
                     salaire_net_apres_impot <- salaire_net_avant_impot * (1 - 0.43)
                   }
                   
                   # Retourne le salaire net après impôt
                   return(salaire_net_apres_impot)
                 }
                 
                 
                 
                 
                           
                 
              
                 
                 
                 
                 
                 
                 
                 
                 
                 
#############" TD5

                 
                 
                 
                 ## graphique vide 
                 plot(c(-5,5),c(0,1))
                 
                 # 2e question 
                 moy=c(0,0,0,-2)
                 sigma=c(0.45,1,2.25,0.7)
                 colors <- c("red", "blue", "green", "orange")
                 legend_labels <- c()
                 for (i in 1:length(moy)){ 
                   simulation=rnorm(n=1e8,
                                    mean = moy, 
                                    sd = sigma[i])
                   lines(density(simulation), col = colors[i])
                   legend_labels <- c(legend_labels, paste("m =", moy[i], ",", "s =", sigma[i]))
                 }
                 
                 # Ajouter une légende
                 legend("topright", legend=legend_labels, col=colors, lwd=2, cex=0.8)
)

}
legend("topright",legend=legend_labels,col=colors,lwd=2, cex=0.8)

# Simuler une loi normale N(μ=0, σ=1) de taille 10 000
rnorm(n=10000,mean=0,sd=1)

# Contruire l'histograme de la distribution de la série avec sa courbe densité.
hist(rnorm(n=10000,mean=0,sd=1),main=" loi normale N(μ=0, σ=1) de taille 10 000",probability=TRUE)
lines(density(rnorm(n=10000,mean=0,sd=1)))

# médiane de la série
median(rnorm(n=10000,mean=0,sd=1))

#quartiles de la série
quantile(rnorm(n=10000,mean=0,sd=1))

# centiles de la série. Quelle valeur de la série correspond au centile 0.95 ?
quantile(rnorm(n=10000,mean=0,sd=1),probs = seq(0,1,0.01)) 
quantile(rnorm(n=10000,mean=0,sd=1), 
         probs = 0.95) # environ 1,64 

#Les commandes pnorm() et qnorm()
qnorm(p=0.95,mean=0,sd=1)
pnorm(q= 1.644854,mean=0,sd=1)


# valeur théorique pour P(X < x) = 0.975
qnorm(p=0.975,mean=0,sd=1)  # la valeur vaut : 1.959964

#probabilité théorique pour P(X >= 1.96) = p
pnorm(q=1.96,mean=0,sd=1)

# Exercice 2 - Construire la table de loi normale

indices_lignes = seq(from = 0, to = 3.9, by = 0.1)

#on crée un vecteur vide pour ajouter les probas au fur et à mesure

all_probas = c()
#On parcourt les indices lignes

for (i in indices_lignes){
  proba = pnorm(q = i, mean = 0, sd = 1)
  #on ajoute la nouvelle proba au vecteur existant
  
  all_probas = c(all_probas,proba)
  all_probas = round(all_probas,digits = 4)
}



indices_colones = seq(from = 0.00, to = 0.09, by = 0.01)
indices_lignes = seq(from = 0, to = 3.9, by = 0.1)

#On crée un objet résultat vide.
resultat = NULL
#On parcourt les indices colonnes
for (j in indices_colones) {
  #on crée un vecteur vide pour ajouter les probas au fur et à mesure
  all_probas = c()
  #On parcourt les indices lignes
  for (i in indices_lignes){
    quantile = i + j
    proba = pnorm(q = quantile, mean = 0, sd = 1)
    #on ajoute la nouvelle proba au vecteur existant
    all_probas = c(all_probas,proba)
    all_probas = round(all_probas,digits = 4)
  }
  #On ajoute une colonne au resultat
  resultat = cbind(resultat,all_probas)
}


class(resultat)
table = data.frame(resultat)
colnames(table) = indices_colones
rownames(table) = indices_lignes
View(table)

# Exercice 3 - Simulation d'une population

population=rnorm(n=10000000,mean=171,sd=9)
mean(population) # oui
sd(population) # pratiquement

hist(population)# oui car on observe une courbe en cloche 

#observé
pop190 = population[population < 190]
length(pop190)
length(pop190) / length(population)

#en théorie
pnorm(q = 190, mean=moyenne_pop, sd=sd_pop)*1e7

#observé
pop190 = population[population >200]
length(pop200)
length(pop200) / length(population)

#en théorie
pnorm(q = 200, mean=moyenne_pop, sd=sd_pop)*1e7

# Exercice 4 - Simulation d'échantillon

echantillon=sample(population,
                   size = 100, 
                   replace = TRUE)
mean(echantillon)
sd(echantillon)


largeur<-qnorm(p = 0.975,mean=0,sd=1)*sd(population)/sqrt(100)
borne_inf<-mean(population)-largeur
borne_sup <-mean(population)+largeur


#Les commandes sample() et apply()

taille_ech<-100
nb_replicat<-1000
echantillons<-replicate(n = nb_replicat,
                        expr =  sample(population,
                                       taille_ech, 
                                       replace = TRUE))

moyennes<-apply(X = echantillons,
                MARGIN = 2,
                FUN = function(x) mean(x))
ecart_types<-apply(echantillons,
                   MARGIN = 2,
                   FUN = function(x) sd(x))

hist(moyennes)

mean(moyennes)
sd(moyennes)

#observé
moy172 = moyennes[moyennes > 172]
length(moy172)
length(moy172) / length(moyennes)

#en théorie
#proba de P( X < 172cm)
proba_inf_172 = pnorm(q = 172, 
                      mean=mean(population), 
                      sd=sd(population)/sqrt(100))
#proba de P( X >= 172cm)
1 - proba_inf_172




#########  TP 5


# La commande setwd()

setwd("C:/Users/mzouzzou/Documents/GitHub/IUT_SD1/dataset/nba")
getwd()

#La commande list.files()

fichiers <- list.files(path = getwd(),
                       pattern = "\\.csv$",
                       full.names = TRUE)

#Les commandes basename() et file_path_sans_ext()

basename("C:/Users/mzouzzou/Documents/GitHub/IUT_SD1/dataset/nba/common_player_info.csv")
file_path_sans_ext("C:/Users/mzouzzou/Documents/GitHub/IUT_SD1/dataset/nba/common_player_info.csv")
# fait apparement la même chose ..
library(tools)
print(fichiers[1])
nom_fichier = basename(path = fichiers[1])
nom_fichier_sans_extension = file_path_sans_ext(x = nom_fichier)
print(nom_fichier_sans_extension)

# La commande assign()

# Lire le fichier CSV et l'affecter à une variable avec le nom du fichier
assign(x = nom_fichier_sans_extension, 
       value = read.csv(fichiers[1],
                        sep = ",",
                        dec = "."))
#un dataframe vient d'être créé avec comme nom d'objet le nom du fichier sans extension.

# La commande Sys.time()

# Boucle pour lire chaque fichier CSV
for (fichier in fichiers) {
  # Extraire le nom du fichier sans extension
  nom_objet <- file_path_sans_ext(basename(fichier))
  
  # Lire le fichier CSV et l'affecter à une variable avec le nom du fichier
  start_time <- Sys.time()
  assign(nom_objet, read.csv(fichier, 
                             sep = ",",
                             dec = "."))
  end_time <- Sys.time()
  # Calcul du temps écoulé
  execution_time <- end_time - start_time
  cat("Importation : ",nom_objet, "=" , execution_time , "\n")
}

# Exercice 2: LES JOINTURES

df_x = subset(team, city == "Los Angeles", select = c("id", "city"))
df_y = subset(game, select = c("game_id", "team_id_home"))
dfJoin = merge(x = df_x, y = df_y, 
               by.x = "id", 
               by.y = "team_id_home", 
               all.x = TRUE)
nrow(dfJoin)
View(dfJoin)

# question 2
df_x = dfJoin
df_y = subset(game_info, select = c("game_id", "attendance"))
dfJoin = merge(x = df_x, y = df_y, 
               by = "game_id",
               all.x = TRUE)
mean(dfJoin$attendance, na.rm = TRUE)
View(dfJoin)

# question 3
df_x = subset(game_summary, season == 2020,
              select = c("game_id", "season"))
dfJoin = merge(x = df_x, y = officials, 
               by = "game_id",
               all.x = TRUE)
length(unique(dfJoin$official_id))
View(dfJoin)

# Exercice 3 - GOAT : Connexion à une database SQLite

library(DBI)

mydb <- dbConnect(SQLite(), "nba.sqlite")













~#  ############### TD6
  
  
  
  
  
  ## exercice 1
  
  
  getwd()
setwd("L:/BUT/SD/Promo 2023/mzouzzou/PROGRAMMATION_STATISTIQUE/TD6")

df=read.csv("L:/BUT/SD/Promo 2023/mzouzzou/PROGRAMMATION_STATISTIQUE/TD6/NBA2014_2015.csv",header = TRUE,sep=",",dec=".")

nrow(df)
ncol(df)
colnames(df)
df$PERIOD =as.factor(df$PERIOD)
df$PTS_TYPE= as.factor(df$PTS_TYPE)
df$SHOOTER = as.factor(df$SHOOTER)


#EXERCICE 2

help(len)

length(df$PERIOD)
length(df$PTS_TYPE)
length(df$SHOOTER)
summary(df)
sd(df$SHOT_DIST)
sd(df$SHOT_CLOCK,na.rm=TRUE)

#combien de tirs manqués/réussis

table(df[  ,"SHOT_RESULT" ])

#les quartiles
quantile(df$SHOT_CLOCK, seq(0,1,0.25))

#les déciles
quantile(df$CLOSE_DIST, seq(0,1, 0.11))

# help(seq)
# help("quantile")


#nombre de matches différents
liste_game=unique(df$GAME_ID)
length(liste_game)

#nombre de joueurs différents
df$SHOOTER= as.factor(df$SHOOTER)
nlevels(df$SHOOTER)


# help("nlevels")

#conversion de la variable SHOT_DIST en mètre pour que les européens comprennent nos chiffres
df$SHOT_DIST_METRE == df$SHOT_DIST * 0.30

#nombre de points qu'a rapporté la tentative (0,2 ou 3)  
df$PTS_MARQUES <- ifelse(df$SHOT_RESULT = "made", yes = df$PTS_TYPE, 0)

#On supprime la variable GAME_RESULT car elle n'est pas utile
df$GAME_RESULT <- NULL

#création d'un objet sans la première colonne GAME_ID
df2 <- df[ , -1 ]



#EXERCICE 3


#Les 100 tirs réussis ou manqués les plus loin
rang <- order(df$SHOT_DIST, decreasing = FALSE)
df3 <- df[ 1 : 100 , ]

#Les 100 tirs réussis les plus loin
df4 = subset(df3, df$SHOT_RESULT == "made")
df4 <- df[ 1 : 100, ]

#Combien de tirs à 3 points a réussi Kobe Bryant ?
df_kobe = subset(df,df$SHOT_RESULT =="made" &
                   df$PTS_TYPE = 3 & 
                   df$SHOOTER == "Kobe BRYANT")

dim(df_kobe)

#Le TOP5 des joueurs qui ont marqués le plus de points dans la saison
df_total <- aggregate(PTS_MARQUES ~ SHOOTER, data = df, FUN = sum)
df_total_tri <- df_total[-order(df_total$PTS_MARQUES)]
df_top5 <-  df_total_tri[5, ]





# EXERCICE 4


# Construction de la fonction
build_graph <- function(une_colonne, nom_colonne) {
  if (is.numeric(une_colonne)) {
    print(boxplot(une_colonne, main = nom_colonne))
  }
  else if (is.factor(une_colonne)) {
    tri <- table(une_colonne)
    print(barplot(tri, main = nom_colonne))
  }
}

help("data.frame")
# Données de test (vous devez les remplacer par votre propre data frame)
df <- data.frame(
  col1 = c(1, 2, 3, 4, 5),
  col2 = c("a", "b", "a", "c", "b")
)

# On déroule la fonction sur chaque colonne du data frame.
for (colonne in colnames(df)) {
  build_graph(une_colonne = df[[colonne]], nom_colonne = colonne)
}


#Vous devez fermer correctement les parenthèses dans la fonction build_graph.
#Il semble que vous vouliez utiliser as.factor() pour vérifier si une colonne est de type facteur.
#Cependant, cette utilisation n'est pas correcte dans le contexte de la vérification de type. 
#Vous devriez plutôt utiliser is.factor().
#Vous avez une faute de frappe dans la boucle for. Vous avez écrit colone au lieu de colonne.
#Vous devez également déclarer le data frame df.




# TP6= EXAMEN 