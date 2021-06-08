class NetworksController < ApplicationController

    def index 
        @networks = Network.all
    end

    def new 
    end

    def create 
        
        binding.pry
        
        @network = current_user.networks.create(network_params)
        redirect_to communities_path
    end

    private 
    def network_params
        params.require(:network).permit(:title, :tagline)
    end
end
