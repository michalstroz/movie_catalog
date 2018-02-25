class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.string :user_name
      t.string :user_surname
      t.integer :rate
      t.text :comment
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
