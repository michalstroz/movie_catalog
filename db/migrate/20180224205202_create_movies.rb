class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release
      t.string :duration
      t.text :description
      t.string :genres
      t.string :director
      t.string :writers
      t.string :country_of_origin

      t.timestamps
    end
  end
end
