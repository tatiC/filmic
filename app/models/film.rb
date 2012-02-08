class Film < ActiveRecord::Base
  has_many :helps
  
  accepts_nested_attributes_for :helps
           
  # Pick a Film
  def self.draw             
    
   random = Random.new
   film = random.rand(1..Film.count-1)
   
   random2 = Random.new
   tips = []
   Film.find(film).helps.each do |t|
     tips << t.tip
   end
                
   random3 = Random.new
   
   tips[random3.rand(tips.length)] 
   end
  
end
