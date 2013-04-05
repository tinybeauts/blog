class CreatePostsTags < ActiveRecord::Migration
  def change
  	create_table :posts_tags do |pt|
  		pt.integer :post_id
  		pt.integer :tag_id
  	end
  end
end
