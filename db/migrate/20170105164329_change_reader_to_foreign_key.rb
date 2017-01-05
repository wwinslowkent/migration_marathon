class ChangeReaderToForeignKey < ActiveRecord::Migration
  def up
      add_column :checkouts, :reader_id, :integer
      remove_column :checkouts, :reader
      add_foreign_key :checkouts, :readers
  end

  def down
      remove_foreign_key :checkouts, :readers
      add_column :checkouts, :reader, :string
      remove_column :checkouts, :reader_id
  end
end
