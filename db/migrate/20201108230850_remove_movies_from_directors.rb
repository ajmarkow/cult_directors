class RemoveMoviesFromDirectors < ActiveRecord::Migration[6.0]
  def change
    remove_column :directors,:movies
  end
end
