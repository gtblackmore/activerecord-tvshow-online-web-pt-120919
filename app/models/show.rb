class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def most_popular_show
    
  end
  
  def lowest_rating
    Show.minimum(:rating)
  end
  
  def least_popular_show
  end
  
  def ratings_sum
    Show.sum(:rating)
  end
  
  def popular_shows
    Show.where("rating > 5")
  end
  
  def shows_by_alphabetical_order
    Show.all.order(:name)
  end
end