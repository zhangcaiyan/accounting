class AddColumnPositionToZhangbens < ActiveRecord::Migration
  def change
    add_column :zhangbens, :position, :string

  end
end
