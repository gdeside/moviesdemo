#' TMDB Movies Dataset 2024
#'
#' data are from a filtered version of the Full TMDB Movies Dataset 2024 (1M Movies)
#'
#' The variables are as follows:
#' \describe{
#' \item{title}{character, title of the film.}
#' \item{genres}{string of characters, genres of the film.}
#' \item{popularity}{numeric, popularity of the film in terms of views.}
#' \item{vote}{numeric, voted rating of the film between 0 and 10.}
#' \item{language}{factor, original language.}
#' \item{producers}{string of characters, production companies.}
#' \item{release_date}{date, release date of the film.}
#' \item{runtime}{numeric, runtime in minutes.}
#' \item{plot}{character, plot summary of the film.}
#' \item{tagline}{character, tagline of the film.}
#' \item{keywords}{character, keywords of the film.}
#' }
#' @format A data frame with 3077 rows and 11 variables.
#' @source \url{https://www.kaggle.com/datasets/asaniczka/tmdb-movies-dataset-2023-930k-m}
"movies_DB"


