require_relative '../config'

class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
    	t.text :tasks, length: 128
    	t.string :complete
    	t.timestamp null: false
    end
  end
end