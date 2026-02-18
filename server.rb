require 'sinatra'
require 'json'
require_relative 'ether_prices'

post '/price' do
  content_type :json

  price = get_price_now
  formatted_price = format('%.2f', price)

  JSON.dump({
    "response_type" => "in_channel",
    "text" => "The price of Ethereum is $#{formatted_price}. :rocket: :full_moon: :fire: :gem: :raised_hands:"
  })
end
