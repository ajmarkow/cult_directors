class Movie < ApplicationRecord
scope :year_released, -> {where ('year_released ILIKE ?',"#{params[:year_released]}%")}
belongs_to :director
end
