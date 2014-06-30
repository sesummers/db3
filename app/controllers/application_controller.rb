class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def show
    @dbase = Dbase.find_by_id(params['id'])
  end
  
  def new
  end
  
  def create
    d = Dbase.new
    d.name = params['name']
    d.email = params['email']
    d.save
    redirect_to "/dbuser/#{ d.id }"
  end
    
   def edit
     @dbase = Dbase.find_by_id(params['id'])
   end
  
  def update
    d = Dbase.find_by_id(params['id'])
    d.name = params['name']
    d.email = params['email']
    d.save
    redirect_to "/dbuser/#{ d.id }"
  end

  def destroy
    d = Dbase.find_by_id(params['id'])
    d.destroy
  end
  
end
