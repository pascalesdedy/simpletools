class Encode64 < ActiveRecord::Base
	def text_input(text)
		self.name = text
	end

	def encode_from_string(input)
		self.dataencode = Base64.encode64(input)
	end
end
