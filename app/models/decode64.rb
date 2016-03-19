class Decode64 < ActiveRecord::Base
	def text_input(text)
		self.name = text
	end

	def decode_from_string(input)
		self.datadecode = Base64.decode64(input)
	end
end
