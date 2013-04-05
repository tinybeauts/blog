class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |p|
  		p.string :title, :null => false
  		p.string :body, :null => false
  		p.timestamps
  	end
  end
end
