class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :synopis
      t.string :picture
      t.string :add_to_favs

      t.timestamps
    end
  end
end
