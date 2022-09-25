class CreateCalcs < ActiveRecord::Migration[7.0]
  def change
    create_table :calcs do |t|
      t.integer :waste
      t.integer :eff
      t.integer :watts

      t.timestamps
    end
  end
end
