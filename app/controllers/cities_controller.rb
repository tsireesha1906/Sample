class CitiesController < ApplicationController
  def index
    @city = City.all
    #@city = City.find_by_state_id( 8
    #@city = City.where(state_id: 8)
  end

  def new
    @city = City.new
  end
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to cities_path, notice: "city was successfully created." }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end
  def city_params
    params.require(:city).permit(:name, :address, :description, :landmark, :state_id)
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    #@state = State.find_by_id(params[:id])
    @city= City.find(params[:id])
    if @city.update(city_params)
      redirect_to :action => 'index'
    else
      render :edit
    end

  end


  def destroy
    @city = City.find(params[:id])
    @city.destroy

    respond_to do |format|
      format.html { redirect_to cities_path, notice: "city was successfully destroyed." }
      format.json { head :no_content }
    end
  end

end
