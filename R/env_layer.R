##' draw a climatic envelope layer into a ggplot
##' @title a climatic envelope layer
##' @param env a climatic envelope, e.g. \code{env_fasy}
##' @param .fill a fill colour
##' @param .colour a line colour
##' @return an object of class "gg"
##' @import ggplot2
##' @export
env_layer <- function(env, .fill = NA, .colour = "red") {
  geom_polygon(aes(x = Prec, y = Temp), data = env, fill = .fill,
               colour = .colour)
}
