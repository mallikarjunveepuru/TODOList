class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :name
      t.string :color
      t.integer :priority_level

      t.timestamps null: false
    end
  end
end
