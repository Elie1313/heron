#' Calcul du demi-périmètre d'un triangle à partir de ses côtés
#'
#' @param a Le premier côté du triangle
#' @param b Le deuxième côté du triangle
#' @param c Le troisième côté du triangle
#' @return Le demi-périmètre du triangle
#' @examples
#' demi_perimetre(3, 4, 5)
demi_perimetre <- function(a, b, c) {
  return((a + b + c) / 2)
}
#' @noRd
