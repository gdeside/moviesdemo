#' Advise movies based on types
#'
#' `advise_movie_k` takes as input a list of movie genre gives as output a number
#' of movies that are in these genre
#'
#' @param keywords list of keywords, Type of the movies
#' @param how_many integer, how many movies to advise.
#'
#' @return
#' A`list` with the following elements:`movie_title`: advised movie title(s),
#' `plot`: plot(s) of advised movie title(s),
#' `keywords`: keywords of the new movies
#'
#' @examples
#'suggestions <-advise_movie_k(c("princess", "magic"), how_many = 3)
#'
#' @export
advise_movie_k <- function(keywords, how_many){

  movies <- moviesdemo::movies_DB

  if(!isTRUE(is.numeric(how_many) & (length(how_many) == 1))) {
    stop("Argument 'how_many' should be a number...")
  }

  l <- lapply(keywords, function(x) grep(pattern = x, x = movies$keywords))
  ids <- Reduce(intersect, l)

  adv <- list()
  if (length(ids)>0){
    id <- sample(ids, size = min(length(ids), how_many))
    df <- movies[id,c("title","plot", "keywords")]

    # adv <- list(movie_title = df$title, plot = df$plot, keywords = df$keywords)

    adv <- new("advice", movie_title = df$title,
               plot = df$plot,
               keywords = df$keywords)
  }

  return(adv)
}
