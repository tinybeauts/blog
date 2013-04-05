class DropPostsAndTags < ActiveRecord::Migration
  def change
  	drop_table :posts_and_tags
  end
end
