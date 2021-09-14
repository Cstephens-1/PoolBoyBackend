class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.belongs_to :owner
      t.belongs_to :cleaner
      t.belongs_to :pool
    end
  end
end
