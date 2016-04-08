class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :name
      t.string :color
      t.integer :priority_level

      t.timestamps null: false
    end
    Priority.create  :name => "Low", :color => "#96F4A1", :priority_level => 3
    Priority.create  :name => "Middle", :color => "#E9DC57", :priority_level => 2
    Priority.create  :name => "High", :color => "#FFFFFF", :priority_level => 1
  end
end