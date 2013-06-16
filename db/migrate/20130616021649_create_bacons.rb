class CreateBacons < ActiveRecord::Migration
  def change
    create_table :bacons do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
