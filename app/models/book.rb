class Book
  include HTTParty

  base_uri 'api.nytimes.com/svc/books/v3'
  default_params 'api-key': 'GSqc6kSSWII0zYQDPyxAohKA149kROGe'

  def self.list(list_name)
    get "/lists/current/#{list_name}.json?api-key=GSqc6kSSWII0zYQDPyxAohKA149kROGe"
  end

  def self.search(title)
    get "/reviews.json?title=#{title}"
  end

  def self.list_name
    get "/lists/names.json"
  end

end
