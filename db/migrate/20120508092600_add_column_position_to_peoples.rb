class AddColumnPositionToPeoples < ActiveRecord::Migration
  def change
    add_column :people, :position, :string

  end
end
