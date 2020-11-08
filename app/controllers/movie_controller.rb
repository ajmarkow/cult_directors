class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    json_response(@movies)
  end

  def show
    @movie = Movie.find(params[:id])
    json_response(@movie)
  end

  def create
    @movie = Movie.create!(movie_params)
    json_response(@movie)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    json_response(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    json_response("Movie with name " + @movie.name + " was deleted")
  end

  private

  def json_response(object, status = :ok)
    render_json: object, status:status
  end

  def movie_params
    params.permit(:title,:year_released,:summary,:movie_id)
  end
end
