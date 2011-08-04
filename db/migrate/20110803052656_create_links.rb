class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url       , null: false
      t.integer :visits   , null: false, default: 0

      t.timestamps
    end
    add_index :links, :url
  end
end