require 'digest/sha1'

class Stall < ActiveRecord::Base
	def initialize(*stall_params)
		super(*stall_params)
		self.uuid = generate_uuid
		self.write_hash = generate_write_hash(self.uuid)
	end

	def generate_uuid
		return SecureRandom.uuid
	end

	def generate_write_hash(uuid)
		return Digest::SHA1.hexdigest uuid
	end
    has_many :plops, dependent: :destroy
end
