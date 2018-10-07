require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      @pirate = Pirates.new(params[:pirate])
    end

    # code other routes/actions here

  end
end
