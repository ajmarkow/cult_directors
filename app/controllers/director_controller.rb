class DirectorController < ApplicationController
  def index
    @directors = Director.all
    json_response(@directors)
  end

  def show
    @director = Director.find(params[:id])
    json_response(@director)
  end

  def create
    @director = Director.create(director_params)
    json_response(@director)
  end

  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def director_params
    params.permit(:name, :birthday, :summary, :movies)
  end
end