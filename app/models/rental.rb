class Rental < ActiveRecord::Base
    belongs_to :client
    belongs_to :vhs 

    def due_date 
        binding.pry
        self.created_at + 7.days
    end

    def self.past_due_date
        self.select { |past_due| !past_due.current}.map(&:vhs)
    end

end