class Movie < ActiveRecord::Base
    has_many :movies_genres 
    has_many :genres, through: :movie_genres
    has_many :vhs
    has_many :rentals, through: :vhs


    
end 