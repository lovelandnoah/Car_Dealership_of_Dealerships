class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.belongs_to :salesman, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
