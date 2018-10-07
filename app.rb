require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      @pirate = Pirates.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

    end

    # code other routes/actions here

  end
end
