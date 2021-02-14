class Client < ActiveRecord::Base
    has_many :rentals
    has_many :vhs, through: :rentals 

    # `Client.first_rental` - accepts an instance of arguments needed to create a new `Client` instance 

    # a currently available `Vhs` instance (or, more difficult: a `Movie` instance or just a `Movie` title and on that basis chooses a currently available vhs); 

    # it creates a new `Client` instance and a new `Rental` instance with `current` set to true.
    def self.first_rental(client_instance)
        # accepts an new instance 
       new_client = Client.create(client_hash)
        puts "🍿 Welcome, #{new_client.name}!"
        movie = Movie.find_by(title: movie_title)
        vhs = Vhs.available_now.find{|vhs| vhs.movie_id == movie.id}
        Rental.create(client_id: new_client.id, vhs_id: vhs.id, current: true)
    end
end