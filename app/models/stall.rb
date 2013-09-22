require 'digest/sha1'

class Stall < ActiveRecord::Base
  image_accessor :qr_code

  def initialize(*stall_params)
    super(*stall_params)
    self.uuid = generate_uuid
    self.write_hash = generate_write_hash(self.uuid)
    qr_code_img = RQRCode::QRCode.new("http://www.plungr.com/qr/#{uuid}?write_hash=#{write_hash}", :size => 16, :level => :h).to_img.resize(500, 500)
    self.update_attribute :qr_code, qr_code_img.to_string
  end

  def generate_uuid
    return SecureRandom.uuid
  end

  def generate_write_hash(uuid)
    return Digest::SHA1.hexdigest uuid
  end

  def latest_plops(limit=10)
    return self.plops.order("created_at DESC").limit(limit)
  end

  has_many :plops, dependent: :destroy
end
