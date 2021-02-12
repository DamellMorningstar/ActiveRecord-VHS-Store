class CreateTableForMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director 
      t.integer :year
      t.integer :length
      t.string :female_director
    end
  end
end
