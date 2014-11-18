class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @user = current_user
      @previous_events = @user.previous_events
      @upcoming_events = @user.upcoming_events
    end
  end

  def trainingcenter
  end

  def about
  end

  def equipment
  end

  def formlearn
  end

  def courses
  end

  def sanktpeterburg
  end

  def partners
  end

  def contact
  end



end
