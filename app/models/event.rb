class Event < ActiveRecord::Base
  attr_accessible :description, :location, :name
  
  has_many :participants
  
  def total_participants
    total = self.participants.count
    self.participants.each do |participant|
      total += participant.guests
    end
    return total
  end
end
