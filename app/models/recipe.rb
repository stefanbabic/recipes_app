class Recipe
  include HTTParty

  default_options.update(verify: false)

  base_uri 'http://food2fork.com/api/search'
  default_params key: ENV['FOOD2FORK_KEY'], q: "search"
  format :json

  def self.for term
    get("", query: { q: term })["recipes"]
  end
end
