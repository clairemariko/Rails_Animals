class PlantsController < ApplicationController

  def index 
    @plants = Plant.all

    respond_to do |format| 
      format.html
      format.json{ render :json => @plants }

    end


  end













end