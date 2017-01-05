class AddNameToCheckout < ActiveRecord::Migration
  def up
    add_column :checkouts, :reader, :string
  end

  def down
    remove_column :checkouts, :reader
  end

end
