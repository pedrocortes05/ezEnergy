class CreateCarbons < ActiveRecord::Migration[7.0]
  def change
    create_table :carbons do |t|
      t.integer :people
      t.integer :ac
      t.integer :refri

      t.timestamps
    end
  end
end
