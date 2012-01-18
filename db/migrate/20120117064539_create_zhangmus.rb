class CreateZhangmus < ActiveRecord::Migration
  def self.up
    create_table :zhangmus do |t|
      t.string :title
      t.date :date
      t.float :fee
      t.text :desc
      t.string :shouzhi
      t.integer :user_id
      t.integer :people_id
      t.integer :zhangben_id
      t.integer :fenlei_id

      t.timestamps
    end
  end

  def self.down
    drop_table :zhangmus
  end
end
