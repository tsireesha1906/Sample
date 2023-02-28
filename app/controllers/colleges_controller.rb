class CollegesController < ApplicationController
  def index
    @college = College.all
  end

  def new
    @college = College.new
  end

  def create
    @college = College.new(college_params)

    respond_to do |format|
      if @college.save
        format.html { redirect_to colleges_path, notice: "college was successfully created." }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @college = College.find(params[:id])
  end

  def update
     @college= College.find(params[:id])
    if @college.update(college_params)
      redirect_to :action => 'index'
    else
      render :edit
    end

  end


  def destroy
    @college = College.find(params[:id])
    @college.destroy

    respond_to do |format|
      format.html { redirect_to colleges_path, notice: "college was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private

  def college_params
    params.require(:college).permit(:name, :address, :location, :city_id, :strength)
  end

end
