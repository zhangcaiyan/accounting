class CreateFenleis < ActiveRecord::Migration
  def self.up
    create_table :fenleis do |t|
      t.string :name
      t.text :desc
      t.integer :zhangben_id

      t.timestamps
    end
  end

  def self.down
    drop_table :fenleis
  end
end
