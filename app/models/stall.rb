require 'digest/sha1'

class Stall < ActiveRecord::Base

	def initialize(*stall_params)
		super(*stall_params)
		self.uuid = generateUUID
		self.write_hash = generateWriteHash(self.uuid)
	end

	def generateUUID
		return SecureRandom.uuid
	end

	def generateWriteHash(uuid)
		return Digest::SHA1.hexdigest uuid
	end

end
