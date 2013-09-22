class AddAuthorFieldToPlops < ActiveRecord::Migration
  def change
    add_column :plops, :author_name, :string
  end
end
