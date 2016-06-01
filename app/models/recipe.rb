class Recipe
	include HTTParty

  	ENV = default_params FOOD2FORK_KEY: '20ee4275d4d5b3ceed9b79d31bf9ab9b', 
  	      FOOD2FORK_SERVER_AND_PORT: "food2fork.com"


	key_value = ENV['FOOD2FORK_KEY']

	base_uri 'http://food2fork.com/api/search'
	default_params key: "20ee4275d4d5b3ceed9b79d31bf9ab9b"
	format :json

	def self.for term
		get("", query: {query: term})["recipes"]
	end
end
