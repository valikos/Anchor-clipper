class CreateClippers < ActiveRecord::Migration
  def up
    create_table :clippers do |t|
      t.string :url
      t.string :clip

      t.timestamps
    end

    add_index :clippers, :url
    add_index :clippers, :clip, :unique => true
  end

  def down
    drop_table :clippers
  end
end
