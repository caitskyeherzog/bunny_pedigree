class AddParentsToBunnies < ActiveRecord::Migration[5.0]
  def change
    add_column :bunnies, :mother_id, :integer
    add_column :bunnies, :father_id, :integer
  end
end
