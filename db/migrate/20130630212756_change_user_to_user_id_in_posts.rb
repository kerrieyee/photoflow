class ChangeUserToUserIdInPosts < ActiveRecord::Migration
  def up
  	remove_column :posts, :user
  	add_column :posts, :user_id, :integer
  end

  def down
  	remove_column :posts, :user_id
  	add_column :posts, :user, :string
  end
end
