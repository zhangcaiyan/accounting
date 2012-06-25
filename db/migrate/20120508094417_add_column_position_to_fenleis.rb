class AddColumnPositionToFenleis < ActiveRecord::Migration
  def change
    add_column :fenleis, :position, :string

  end
end
