require 'sinatra/base'
require './lib/compliment'

# Why is it a good idea to wrap our App class in a module?
module ComplimentSite
  class App < Sinatra::Base
    get '/' do
      @compliment = Compliment.new
			erb :compliment
    end

  end
end

