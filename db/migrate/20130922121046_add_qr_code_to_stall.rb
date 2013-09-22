class AddQrCodeToStall < ActiveRecord::Migration
  def change
    add_column :stalls, :qr_code_uid, :string
  end
end
