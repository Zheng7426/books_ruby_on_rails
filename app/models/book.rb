class Book
  include HTTParty

  base_uri 'api.nytimes.com/svc/books/v3'
  #default_params api_key: 'GSqc6kSSWII0zYQDPyxAohKA149kROGe'

  def self.list
    get "/lists/current/hardcover-fiction.json?api-key=GSqc6kSSWII0zYQDPyxAohKA149kROGe"
  end

  def self.search(name)
    get "/name/#{name}"
  end

end
