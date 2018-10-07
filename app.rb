require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    POST "/pirates" do
      @pirate = Pirates.new(params[:pirate])
    end

    # code other routes/actions here

  end
end
