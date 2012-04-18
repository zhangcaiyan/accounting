class RemoveColumnZhangbenIdForFenleis < ActiveRecord::Migration
  def up
    remove_column :fenleis, :zhangben_id
  end

  def down
    add_column :fenleis, :zhangben_id, :integer
  end
end
