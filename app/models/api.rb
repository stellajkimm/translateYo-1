class API
	API_KEY = File.read('lib/assets/.api_key')
	API_SECRET = File.read('lib/assets/.api_secret')

	def self.call_api
		$translator = MicrosoftTranslator::Client.new(API_KEY, API_SECRET)
	end



end

