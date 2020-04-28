class CreateCnts < ActiveRecord::Migration[5.2]
  def change
    create_table :cnts do |t|
      t.integer :num

      t.timestamps
    end
  end
end
