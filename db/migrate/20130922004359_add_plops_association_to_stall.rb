class AddPlopsAssociationToStall < ActiveRecord::Migration
  def change
      change_table :plops do |t|
          t.references :stall
        end

  end
end
