class WelcomeController < ApplicationController
  def index
  end

  
  def myarticles
    @articles = current_user.articles
  end
end
