class AddUserFacilityJoinTable < ActiveRecord::Migration
  def self.up
      create_table :users_facilities, :id => false do |t|
        t.integer :user_id
        t.integer :facility_id
      end
    end
 
    def self.down
      drop_table :users_facilities
    end
end
