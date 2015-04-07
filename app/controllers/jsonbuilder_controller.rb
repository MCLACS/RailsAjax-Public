class JsonbuilderController < ApplicationController
	def index
	end

	def people
		 render :json => ['Tom', 'Sally', 'Steve']
	end

	def people2
		url = URI.parse('http://php-csci343.rhcloud.com/examples/donationsAjax.php')
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
			http.request(req)
		}
		render :text => res.body
	end
end
