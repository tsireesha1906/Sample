class StatesController < ApplicationController
  def index
    @state = State.all
  end
  def new
    @state = State.new
  end
    def create
      @state = State.new(states_params)

      if @state.save
        redirect_to :action => 'index'
      else
        @state = State.all
        render :action => 'new'
      end
    end
  def show
    @state = State.find(params[:id])
  end
  def edit
    @state = State.find(params[:id])
  end

  def update
    #@state = State.find_by_id(params[:id])
    @state= State.find(params[:id])
    if @state.update(states_params)
      redirect_to :action => 'index'
    else
      render :edit
    end

  end
  def destroy
    @state = State.find(params[:id])
    @state.destroy
      #  if @state.destroy
      #    flash[:notice] = "State was successfully destroyed"
      # redirect_to :states_path
    # else
    #   render :index
    # end

    respond_to do |format|
      format.html { redirect_to states_path, notice: "State was successfully destroyed." }
      format.json { head :no_content }
    end
    end
  end
    private
    def states_params
      params.require(:state).permit(:name, :country_id, :description)

  end

