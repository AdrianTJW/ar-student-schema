require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |t|
    	t.string :first_name, length: 64
    	t.string :last_name, length: 64
    	t.string :gender, length:64
    	t.date :birthday
    	t.string :email, uniqueness: true
    	t.integer :phone
    end
  end
end
