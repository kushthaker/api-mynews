class ApiController < ApplicationController

def home
end

def nytimes
	response = HTTParty.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7?api-key=8adaa431139b3e23bdb45bbd057b7af8:15:72555388')
	render json: response
end

end
