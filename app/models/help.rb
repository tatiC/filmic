class Help < ActiveRecord::Base
  belongs_to :film
  
  def tip_number(film_id)
    tip_ids = []
    
    film = Film.find(self.film_id)
    film.helps.each do |tip|
      tip_ids << tip.id
    end                
    tip_ids.index(id) + 1
  end
  
end
