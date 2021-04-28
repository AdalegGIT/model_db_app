class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :orderNo
     
      t.string :customerName


      t.timestamps
    end
  end
end
