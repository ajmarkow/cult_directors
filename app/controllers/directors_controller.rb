class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    json_response(@directors)
  end

  def show
    @director = Director.find(params[:id])
    json_response(@director)
  end

  def create
    @director = Director.create!(director_params)
    json_response(@director)
  end

  def update
    @director = Director.find(params[:id])
    @director.update(director_params)
    json_response(@director)
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
    json_response("Director with name " + @director.name + " was deleted")
  end

  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def director_params
    params.permit(:name, :birthday, :summary, :movies)
  end
end
