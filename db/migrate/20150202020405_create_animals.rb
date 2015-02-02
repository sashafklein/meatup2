class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :breed
      t.string :feed
      t.float :live
      t.float :hanging
      t.float :meat
      t.string :name
      t.string :ranch
      t.string :butcher

      t.timestamps null: false
    end
  end
end
