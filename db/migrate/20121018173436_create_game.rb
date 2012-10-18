class CreateGame < ActiveRecord::Migration
  def up
  	create_table :games do |g|
  		g.integer :number
  	end
  end

  def down
  end
end
