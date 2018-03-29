class MoviesController < ApplicationController
  class MovieController < ApplicationController
  def index
    @movies = Movies.all
  end

  def show
    @movies = Movies.find(params[:id])
  end

  def new
    @movie = Movies.new
  end

  def create
    @new_movie = Movies.create(movie_params)
    redirect_to "/movies/#{@new_movies.id}"
  end

  def edit
    @movie = Movies.find(params[:id])
  end

  def update
    @movie = Movies.find(params[:id])
    @movie.update(movie_params)
    redirect_to "/movies/#{@movie.id}"
  end

  def destroy
    Movies.find(params[:id]).destroy
    redirect_to "/movies"
  end

  private
  def movies_params
    params.require(:movies).permit(:title, :genre, :year :integer, :synopis, :add_to_favs,)
  end
end
