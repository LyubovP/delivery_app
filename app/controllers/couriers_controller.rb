class CouriersController < ApplicationController
  
  def show
    @courier = Courier.find(params[:id])
  end
  
  def new
    @courier = Courier.new
  end
  
  def create
    @courier = Courier.new(courier_params)    
    if @courier.save
      flash[:success] = "Welcome to the Delivery App!"
       redirect_to @courier
       
    else
      render 'new'
    end
  end
  
  private

    def courier_params
      params.require(:courier).permit(:name, :email)
    end
end
