class SessionsController < ApplicationController
  
 def new
 end

  def create
    courier = Courier.find_by(email: params[:session][:email].downcase)
    if courier || courier.authenticate(params[:session][:email])
      log_in courier
      redirect_to courier
    else
      flash.now[:danger] = 'Invalid email'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
