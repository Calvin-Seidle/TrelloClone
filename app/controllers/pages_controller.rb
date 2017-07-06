class PagesController < ApplicationController
  
  def home
  	if current_user 
  		@projects = current_user.projects
  		@tasks = current_user.tasks
  	end 
  end

  def about
  end

  def test
  end

end
