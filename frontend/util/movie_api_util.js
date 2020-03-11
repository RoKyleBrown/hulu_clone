

export const fetchMovies = () => {
    return $.ajax({
        url: `/api/movies`,
        error: (err) => console.log(err)
    })
}

export const fetchMovie = (movieId) => {
    return $.ajax({
        url: `/api/movies/${movieId}`,
        error: (err) => console.log(err)
    })
}