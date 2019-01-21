class AddOwnerToDesserts < ActiveRecord::Migration[5.2]
  def change
    add_column :desserts, :owner, :string
  end
end
