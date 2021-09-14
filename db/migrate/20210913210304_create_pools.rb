class CreatePools < ActiveRecord::Migration[6.1]
  def change
    create_table :pools do|t|
      t.string :size
      
      t.boolean :cleaned

      t.integer :times_cleaned

      t.datetime :date_cleaned

      t.belongs_to :cleaner
      t.belongs_to :owner
    end
  end
end
