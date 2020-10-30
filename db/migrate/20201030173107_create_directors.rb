class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.date :birthday
      t.text :summary
      t.string :movies

      t.timestamps
    end
    add_index :directors, :name
  end
end
