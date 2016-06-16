class AnimalsController < ApplicationController 
  # inherits functionality from ApplicationController
  
#we are not need a new and update as we are focusing on devloping an API not a full application.

  def index
    @animals = Animal.all
    # make things accessible to View by setting them to instance vb

    respond_to do |format| 
      format.html
      # above is the default format
      format.json{ render :json => @animals }
      # if json is asked for, renders the data as json instead of using the specified view
    end
  end

  def show
    animal = Animal.find_by(id: params[:id])
    render({ :json => animal })
  end

  def create
    # params.require(:<name>) says it is fine to have the 'name' passed into the create method
    # .permit is called 'strong params' - says we can only accept these specific properties
    animal = Animal.create( params.require(:animal).permit([:name, :legs]) )
    render({ :json => animal })
  end

  def destroy
    animal = Animal.find(params[:id])
    if animal.destroy!
      render nothig: true
    else
      render status: :unprocessable_entity
    end
  end

  def update
    animal = Animal.find(params[:id])
    #update_att will update all the attributes and update the database, this is rails
    if animal.update_attributes(animal_params)
      render json: animal , status: :ok
    else
      render status: :unprocessable_entity
    end
  end


#params might be a global an instance variable , so this might be something we are inheringting from application controller. 
  private
  def animal_params
    params.require(:animal).premit([:name, :legs])
  end


end