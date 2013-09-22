class AddHeartCountToPlops < ActiveRecord::Migration
  def change
    add_column :plops, :heart_count, :integer
  end
end
