class AddColumnUserIdAndShouzhiForFenleis < ActiveRecord::Migration
  def up
    add_column :fenleis, :user_id, :integer
    add_column :fenleis, :shouzhi, :string
  end

  def down
    remove_column :fenleis, :user_id
    remove_column :fenleis, :shouzhi
  end
end
