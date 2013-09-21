class CreateStalls < ActiveRecord::Migration
  def change
    create_table :stalls do |t|
      t.string :name
      t.string :uuid
      t.string :write_hash
      t.string :qr_code

      t.timestamps
    end
  end
end
