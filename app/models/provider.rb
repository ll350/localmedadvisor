class Provider < ActiveRecord::Base
  
  has_many :provider_reviews
  has_and_belongs_to_many :users
  
  def self.search(search)
      where('name LIKE ?', "%#{search}%")
    end
end
