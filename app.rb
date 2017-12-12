require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require "pry"

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @anatext = TextAnalyzer.new(params[:user_text])
    erb :results
  end

end
