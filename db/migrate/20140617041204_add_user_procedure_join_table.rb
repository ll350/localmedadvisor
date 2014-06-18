class AddUserProcedureJoinTable < ActiveRecord::Migration
  def self.up
      create_table :users_procedures, :id => false do |t|
        t.integer :user_id
        t.integer :procedure_id
      end
    end
 
    def self.down
      drop_table :users_procedures
    end
end
