class CreatePlops < ActiveRecord::Migration
  def change
    create_table :plops do |t|
      t.string :message

      t.timestamps
    end
  end
end
