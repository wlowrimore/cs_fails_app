class StaticPagesController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find(session[:user_id]) 
    end
  end

  def about
  end

  def policy
  end

  def terms
  end
end
