class Recipe
  include HTTParty

  default_options.update(verify: false)

  base_uri 'http://food2fork.com/api/search'
  default_params key: "7fc275b8a1193b722d960953615b242d", q: "search"
  format :json

  def self.for term
    get("", query: { q: term })["recipes"]
  end
end
