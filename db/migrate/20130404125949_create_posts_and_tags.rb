class CreatePostsAndTags < ActiveRecord::Migration
  def change
  	create_table :posts_and_tags do |pat|
  		pat.integer :post_id, :null => false
  		pat.integer :tag_id
  	end
  end
end
