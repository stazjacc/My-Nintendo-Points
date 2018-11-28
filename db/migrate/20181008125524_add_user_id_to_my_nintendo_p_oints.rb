class AddUserIdToMyNintendoPOints < ActiveRecord::Migration[5.2]
  def change
    add_column :my_nintendo_points, :user_id, :integer
  end
end
