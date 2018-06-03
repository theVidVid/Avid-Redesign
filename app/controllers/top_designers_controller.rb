class TopDesignersController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @featured_designers = Designer.where('location IS NOT NULL').group(:location).order('count_id DESC').limit(6).count(:id)    
  end

  def show
  end

  def new
  end

  def edit
  end
end
