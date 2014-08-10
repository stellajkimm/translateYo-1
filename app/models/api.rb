class API
	API_KEY = File.read('../../lib/assets/.api_key')
	API_SECRET = File.read('../../lib/assets/.api_secret')

	def self.call_api
		user_key = API_KEY
		user_token = API_SECRET
	end



end

	# API.call_api