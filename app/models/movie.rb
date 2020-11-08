class Movie < ApplicationRecord
  # Scope for returning movie by year.  Movies endpoint is still work in progress so line 3 is inactive.
# scope :year_released, -> {where ('year_released ILIKE ?',"#{params[:year_released]}%")}
belongs_to :director
end
