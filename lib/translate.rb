require 'rest-client'

module Translate
	SERVICE_URL='http://itranslate4.eu/api/'
 	
 	class Itranslate4 

 		def self.configure(options=nil)
 			p options
 			@config=Itranslate4.new(options)
 		end

		def initialize(options=nil)
		   @key=options[:key]
		end

		def self.send_request(method, url, params={})
		  response = RestClient::Request.execute(method: method, url: url, headers: {params: params})
		  self.parse_response(response)
		rescue => e
		  self.parse_response(e.response)
		end

			def self.parse_response(response)
			{ code: response.code, body: response.body.empty? ? '' : JSON.parse(response.body, symbolize_names: true) }
		end

		def translate(src, trg, dat='',rid=nil)
			Itranslate4.send_request :get, "#{SERVICE_URL}/Translate?auth=#{@key}",
			{src: src, trg:trg, dat: dat, rid:rid}.as_json
		end

		def languages
			Itranslate4.send_request :get, "#{SERVICE_URL}/GetLanguages?auth=#{@key}"
		end

		def get_routes(src, trg)
			Itranslate4.send_request :get, "#{SERVICE_URL}/GetRoutes?auth=#{@key}",
			{src: src, trg:trg}.as_json
		end

		def get_providers
			Itranslate4.send_request :get, "#{SERVICE_URL}/GetProviders?auth=#{@key}"
		end
	end

	
end
