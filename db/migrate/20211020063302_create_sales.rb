class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.date :date
      t.string :inv_number
      t.integer :code
      t.string :name
      t.string :afm
      t.float :kgs
      t.float :value

      t.timestamps
    end
  end
end
