class SessionsController < ApplicationController

  def new
  end
  
  def create
    u = User.find_by_name(params['username'])
    if u && u.authenticate(params['password'])
        session['user_id'] = u.id
        redirect_to '/users'
      else
      redirect_to '/users'
      end
  end
  
  def destroy
    reset_session
    redirect_to '/users'
  end

end