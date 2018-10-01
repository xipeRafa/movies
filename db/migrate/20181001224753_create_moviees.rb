class CreateMoviees < ActiveRecord::Migration[5.2]
  def change
    create_table :moviees do |t|
      t.string :title
      t.text :description
      t.string :movie_length
      t.string :director
      t.string :rating

      t.timestamps
    end
  end
end
