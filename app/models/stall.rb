require 'digest/sha1'

class Stall < ActiveRecord::Base

	def initialize(*stall_params)
		super(*stall_params)
		generateUUID
		generateWriteHash
	end

	def generateUUID
		self.uuid = SecureRandom.uuid
	end

	def generateWriteHash
		self.write_hash = Digest::SHA1.hexdigest self.uuid
	end

end
