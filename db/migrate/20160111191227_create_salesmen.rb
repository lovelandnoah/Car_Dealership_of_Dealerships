class CreateSalesmen < ActiveRecord::Migration
  def change
    create_table :salesmen do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.belongs_to :dealership, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
