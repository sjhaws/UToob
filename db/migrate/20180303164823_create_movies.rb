class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duration
      t.string :genre
      t.text :description
      t.string :trailer

      t.timestamps
    end
  end
end
