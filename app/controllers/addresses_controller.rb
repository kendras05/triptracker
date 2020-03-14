class AddressesController < ApplicationController
  
  def index
    @addresses = Address.all
    render json: @addresses
  end


  def show
    @Address.create(address_params)
    render json: @address
  end

  def create
      @address = Address.new(address_params)

    if @address.save
      render json: @address, status: :created, location: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

    

private
 
  def update
     @address.update(address_params)
      render json: @address
    
  end

  def destroy
     Address.find(params[:id]).destroy  
  end
end
