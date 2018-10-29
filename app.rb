require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
     "Goodbye, #{@user_name}."
  end
  
  ####multiply is the file : is the params
  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    #sets the @var to equal both params combined
    "#{@product}"##displays product
  end

end