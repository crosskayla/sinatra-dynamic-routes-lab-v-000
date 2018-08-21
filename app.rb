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
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @phrase = ""

    @words.each do |word|
      @phrase += word + " "
    end

    @phrase + "."
  end

end
