class BooksController < ApplicationController
  def index
    #@search_term = params[:name] || 'can'
      #@all = Book.all
      #@countries = Book.search(@search_term)
    @list = Book.list
    @result = @list['results']
  end
end
