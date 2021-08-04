module SessionsHelper
  def log_in(courier)
    session[:courier_id] = courier.id
  end
  
  def current_courier
    @current_courier ||= Courier.find_by(id: session[:courier_id])
  end
  
  def logged_in?
    !current_courier.nil?
  end
  
  def log_out
    session.delete(:courier_id)
    @current_courier = nil
  end
end
