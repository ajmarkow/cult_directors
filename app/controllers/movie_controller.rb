class MovieController < ApplicationController
  def json_response(object, status = :ok)
    render_json: object, status:status
  end
end
