require 'httparty'
require 'pp'

url = "http://localhost:3000/api/v1/books.json"
page_data = HTTParty.get(url)
responses = page_data.parsed_response

books = responses['data'].map{ |book|
  book['id'].to_s <<
    ': ' << book['title'] <<
    ', ' << book['author']
}

puts books
