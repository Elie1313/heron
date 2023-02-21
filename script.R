# Projet Github M1 ECAP Elie Nouhra
# Partie 2

library(devtools)

# Q2 et Q3
usethis::use_r("demi_perimetre")

# Mettre à jour les fichiers de documentation
document()

usethis::use_r("heron")

# Mettre à jour les fichiers de documentation
document()

# Q4
heron <- function(a, b, c) {
  # Vérifier que chaque argument est numérique
  if (!is.numeric(a) || !is.numeric(b) || !is.numeric(c)) {
    stop("Les arguments doivent être numériques!")
  }
  # Vérifier que chaque argument est positif
  if (a < 0 || b < 0 || c < 0) {
    stop("Les arguments doivent être positifs!")
  }
  # Avertir si un des arguments est égal à 0
  if (a == 0 || b == 0 || c == 0) {
    warning("Un des arguments est égal à 0!")
  }
  p <- demi_perimetre(a, b, c)
  return(sqrt(p * (p - a) * (p - b) * (p - c)))
}

# Q5
demi_perimetre(1, 2, 3)
demi_perimetre(1, 2, 4)
demi_perimetre(8, 9, 10)

heron("a", 2, 5)
heron(1, 2, -5)
heron(1, 2, 3)
heron(2, 4, 5)
heron(3, 6, 8)
# Les résultats obtenus sont cohérents.

# Q6
devtools::install()
