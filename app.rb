require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse!
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    @num.times do
      "#{@phrase} "
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:phrase]
    @num.times do
      "#{@phrase} "
    end
  end

end
