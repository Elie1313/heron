#' Calcul de l'aire d'un triangle à partir de ses côtés
#'
#' @param a Le premier côté du triangle
#' @param b Le deuxième côté du triangle
#' @param c Le troisième côté du triangle
#' @return L'aire du triangle
#' @export
#' @examples
#' heron(3, 4, 5)
#' heron(3, 2, 2)
heron <- function(a, b, c) {
  p <- demi_perimetre(a, b, c)
  return(sqrt(p * (p - a) * (p - b) * (p - c)))
}
