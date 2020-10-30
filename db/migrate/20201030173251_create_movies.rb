class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :year_released
      t.text :summary
      t.references :director, index: true, foreign_key: true
      t.timestamps
    end
  end
end
