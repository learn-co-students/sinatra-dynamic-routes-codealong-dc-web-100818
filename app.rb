require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    erb :hello
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    erb :hello_name
  end

  get "/goodbye/:name" do
    erb :goodbye
  end

  get "/multiply/:num1/:num2" do
    erb :multiply
  end
end
