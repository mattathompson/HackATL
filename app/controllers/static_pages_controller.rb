class StaticPagesController < ApplicationController

  skip_before_filter :authenticate_user!

  def home
    @users = User.order(:first_name)
  end


  def about

  end

end
