class AttendancesController < ApplicationController
  def index
    @attendance = Attendance.all
  end

  def new
    @attendance = Attendance.new
  end
  def update
    @attendance = Attendance.find(params[:id])
    if @attendance.update(attendance_params)
      redirect_to :action => 'index'
    else
      render :edit
    end
  end
  def create
    @attendance = Attendance.new(attendance_params)

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to attendances_path, notice: "Attendance was successfully created." }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end
  def edit
    @attendance = Attendance.find(params[:id])
  end
  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy

    respond_to do |format|
      format.html { redirect_to attendance_path, notice: "Attendance was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private

  def attendance_params
    params.require(:attendance).permit(:name, :attendance_status, :student_id, :section, :rollnumber, :student_class)
  end
end

