require_dependency "domain_status/application_controller"

module DomainStatus
  class StatusController < ApplicationController
    def index

    	require 'net/http'
			require "uri"
			
			begin
				@domain = params[:domain]
				url = "http://www." + @domain
				uri = URI.parse(url)
				http = Net::HTTP.new(uri.host, uri.port)
				request = Net::HTTP::Get.new(uri.request_uri)
				response = http.request(request)
				@status = response.code
		  rescue
		  	@status = "Error"
		  end

	  	respond_to do |format|
	  		format.html
	    	format.json { render :json => @status }
	  	end

    end
  end
end
