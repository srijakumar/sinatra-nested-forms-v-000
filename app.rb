require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :'pirates/new'
    end

    POST "/pirates" do
      @pirate = Pirates.new(params[:pirate])
    end

    # code other routes/actions here

  end
end
