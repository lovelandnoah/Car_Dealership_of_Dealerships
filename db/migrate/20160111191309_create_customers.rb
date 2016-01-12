class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.belongs_to :salesman, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
