require 'rest-client'

module Itranslate4
	SERVICE_URL='http://itranslate4.eu/api/'

	class << self
	    attr_accessor :configuration
	  end

	  def self.configure
	    self.configuration ||= Configuration.new
	    yield(configuration)
	  end
 	
 	class Configuration 
 		 attr_accessor :key
 		 def initialize	   
 		 	
		end
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

	def self.translate(src, trg, dat='',rid=nil)
		Itranslate4.send_request :get, "#{SERVICE_URL}/Translate?auth=#{Itranslate4.configuration.key}",
		{src: src, trg:trg, dat: dat, rid:rid}.as_json
	end

	def self.languages
		Itranslate4.send_request :get, "#{SERVICE_URL}/GetLanguages?auth=#{Itranslate4.configuration.key}"
	end

	def self.get_routes(src, trg)
		Itranslate4.send_request :get, "#{SERVICE_URL}/GetRoutes?auth=#{Itranslate4.configuration.key}",
		{src: src, trg:trg}.as_json
	end

	def self.get_providers
		Itranslate4.send_request :get, "#{SERVICE_URL}/GetProviders?auth=#{Itranslate4.configuration.key}"
	end
	

	
end
