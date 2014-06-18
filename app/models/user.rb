class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         has_many :provider_reviews
         has_many :facility_reviews
         has_and_belongs_to_many :providers
         has_and_belongs_to_many :facilities
         has_and_belongs_to_many :procedures
end
