class ApiController < ApplicationController

def home
end

def nytimes
	response = HTTParty.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7?api-key=8adaa431139b3e23bdb45bbd057b7af8:15:72555388')
	render json: response
end

def producthunt
	response = HTTParty.get('https://api.producthunt.com/v1/posts?access_token=ebae349f8b26bb6a695e0aeda41075952142bb869db7c8a89fa7c48630d46988')
	render json: response
end

def genius
	response = HTTParty.get('http://api.genius.com/search?q=Drake&access_token=4jiqWRKhn_2I461zuKvR_4cz7AhRCxEzaxJOEeS_GiJCtCcTkQja41EJqyl2xM4b')
	render json: response
end

def dribble
	response = HTTParty.get('https://api.dribbble.com/v1/shots?access_token=00e945e8643beb4a86f77ac5ac5af0989d248a81b0608f4706d78db9febdd49c')
	render json: response
end

end




