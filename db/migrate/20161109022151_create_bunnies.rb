class CreateBunnies < ActiveRecord::Migration[5.0]
  def change
    create_table :bunnies do |t|
      t.string :name
      t.string :color
      t.date :dob

      t.timestamps
    end
  end
end
