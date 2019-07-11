class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  
  def new
  	@client = current_user.clients.build
  end

  def index
    @client = Client.where(user_id: current_user)  
  end

  def show
  end

  def create
  	@client = current_user.clients.build(client_params)
  	if @client.save
  		redirect_to clients_url, notice: "Client created."
  	else
  		render 'new'
  	end	
  end

  def edit
    
  end

  def update
    if @client.update(client_params) 
      redirect_to clients_path, notie: "Client details updated."
    else
      render 'new'
    end 
  end

  def destroy
    @client.destroy
    redirect_to clients_path, notice: "Client deleted." 
  end


  private

      def set_client
        @client = Client.find(params[:id])    
      end

  		def client_params
  			params.require(:client).permit(:name, :email, :contact_number)	
  		end
end
