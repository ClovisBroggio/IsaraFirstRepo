library(nycflights13)
library(tidyverse)

?flights

flights


ggplot(data = flights) +
  geom_point(mapping = aes(x = distance, y = air_time))
# graphique mettant en relation la distance par le temps de vol,
# on s'attend à observer une fonction affine


# distance_1200_3000 <- flights%>%
#  filter(distance > 1200)%>%
#  filter(distance <3000) # 
# je sais pas comment faire pour faire correspondre la donnée et utiliser les pipes
# j'ai néanmoins vu que l'on pouvait utiliser la donction "between" pour indiquer un interval.



filter(flights, arr_delay > 120 & dep_delay <= 0)# tests de formules pour les exercices



jan1 <- n_distinct(filter(flights, month == 1))
feb2 <- n_distinct(filter(flights, month == 2))
mar3 <- n_distinct(filter(flights, month == 3))
apr4 <- n_distinct(filter(flights, month == 4))
may5 <- n_distinct(filter(flights, month == 5))
jun6 <- n_distinct(filter(flights, month == 6))
jul7 <- n_distinct(filter(flights, month == 7))
aug8 <- n_distinct(filter(flights, month == 8))
sep9 <- n_distinct(filter(flights, month == 9))
oct10 <- n_distinct(filter(flights, month == 10))
nov11 <- n_distinct(filter(flights, month == 11))
dec12 <- n_distinct(filter(flights, month == 12))


# je n'arrive pas à créer mon une nouvelle table
flights_month <- data_frame(
  month = 1:12,
  flights_nbr = c(jan1, feb2, mar3, apr4, may5, jun6, jul7, aug8, sep9, oct10, nov11, dec12)
  )


# je souhaiterais faire un diagramme en bar pour observer le nombre de vols effectués/mois
ggplot(data = flights) +
  geom_bar(mapping = )

L3 <- LETTERS[1:3]
char <- sample(L3, 10, replace = TRUE)
(d <- data.frame(x = 1, y = 1:10, char = char))
## The "same" with automatic column names:
data.frame(1, 1:10, sample(L3, 10, replace = TRUE))