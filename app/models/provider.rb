class Provider < ActiveRecord::Base
  
  has_many :provider_reviews
  
  def self.search(search)
      where('name LIKE ?', "%#{search}%")
    end
end
