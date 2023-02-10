library(devtools)

usethis::use_r("demi_parametre")

# Mettre à jour les fichiers de documentation
document()

usethis::use_r("heron")

# Mettre à jour les fichiers de documentation
document()


heron <- function(a,b,c) {
  # Vérifiez que chaque argument est numérique
  if (!is.numeric(a) || !is.numeric(b) || !is.numeric(c)) {
    stop("Les arguments doivent être numériques!")
  }
  # Vérifiez que chaque argument est positif
  if (a < 0 || b < 0 || c < 0) {
    stop("Les arguments doivent être positifs!")
  }
  # Avertir si un des arguments est égal à 0
  if (a == 0 || b == 0 || c == 0) {
    warning("Un des arguments est égal à 0!")
  }
  p <- demi_perimetre(a,b,c)
  return(sqrt(p*(p-a)*(p-b)*(p-c)))
}

demi_perimetre(1,2,3)
demi_perimetre(1,2,4)
demi_perimetre(8,9,10)


heron("a",2,5)
heron(1,2,-5)
heron(1,2,3)
heron(2,4,5)
heron(3,6,8)
#Les résultats obtenus sont cohérents.

devtools::install()
