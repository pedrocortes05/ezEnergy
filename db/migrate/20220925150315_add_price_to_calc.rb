class AddPriceToCalc < ActiveRecord::Migration[7.0]
  def change
    add_column :calcs, :price, :integer
  end
end
