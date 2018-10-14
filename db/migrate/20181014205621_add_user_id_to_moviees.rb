class AddUserIdToMoviees < ActiveRecord::Migration[5.2]
  def change
    add_column :moviees, :user_id, :integer
  end
end
