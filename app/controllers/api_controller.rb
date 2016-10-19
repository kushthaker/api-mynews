class ApiController < ApplicationController

def home
end

# Does Not Work
def nytimes
	response = HTTParty.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7?api-key=8adaa431139b3e23bdb45bbd057b7af8:15:72555388')
	render json: response
end

# Works
def producthunt
	response = HTTParty.get('https://api.producthunt.com/v1/posts?access_token=ebae349f8b26bb6a695e0aeda41075952142bb869db7c8a89fa7c48630d46988')
	render json: response
end

# Works
def genius
	response = HTTParty.get('http://api.genius.com/search?q=Drake&access_token=4jiqWRKhn_2I461zuKvR_4cz7AhRCxEzaxJOEeS_GiJCtCcTkQja41EJqyl2xM4b')
	render json: response
end

# Does Not Work
def dribble
	response = HTTParty.get('https://api.dribbble.com/v1/shots?access_token=00e945e8643beb4a86f77ac5ac5af0989d248a81b0608f4706d78db9febdd49c')
	render json: response
end

def bills
	response = HTTParty.get('http://api.parliamentdata.ca/bills')
	render json: response
end

def trello_cards
	response = HTTParty.get('https://api.trello.com/1/boards/57bb885c5412df3eb650f926/cards?fields=name,idList,url&key=5f49237ee573ef7d61991fe9d65f6ade&token=8d76d7da8bc5d135a462c6c2027177b8104c70a1e727f7140bc388ced63e1d88')
	render json: response
end

end




