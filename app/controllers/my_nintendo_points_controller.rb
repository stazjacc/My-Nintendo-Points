class MyNintendoPointsController < ApplicationController
  before_action :set_my_nintendo_point, only: [:show, :edit, :update, :destroy]

  # GET /my_nintendo_points
  # GET /my_nintendo_points.json

  add_breadcrumb "Início", :root_path

  def index

    #@my_nintendo_points = MyNintendoPoint.all
    @my_nintendo_points = current_user.my_nintendo_points 
  end

  # GET /my_nintendo_points/1
  # GET /my_nintendo_points/1.json
  def show
    add_breadcrumb "Minhas Contas", :new_my_nintendo_point_path

    @my_nintendo_points = current_user.my_nintendo_points
  end

  # GET /my_nintendo_points/new
  def new
    @my_nintendo_point = MyNintendoPoint.new
  end

  # GET /my_nintendo_points/1/edit
  def edit
  end

  # POST /my_nintendo_points
  # POST /my_nintendo_points.json
  def create
    @my_nintendo_point = MyNintendoPoint.new(my_nintendo_point_params)

    respond_to do |format|
      if @my_nintendo_point.save
        format.html { redirect_to @my_nintendo_point, notice: 'My nintendo point was successfully created.' }
        format.json { render :show, status: :created, location: @my_nintendo_point }
      else
        format.html { render :new }
        format.json { render json: @my_nintendo_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_nintendo_points/1
  # PATCH/PUT /my_nintendo_points/1.json
  def update
    respond_to do |format|
      if @my_nintendo_point.update(my_nintendo_point_params)
        format.html { redirect_to @my_nintendo_point, notice: 'My nintendo point was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_nintendo_point }
      else
        format.html { render :edit }
        format.json { render json: @my_nintendo_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_nintendo_points/1
  # DELETE /my_nintendo_points/1.json
  def destroy
    @my_nintendo_point.destroy
    respond_to do |format|
      format.html { redirect_to my_nintendo_points_url, notice: 'My nintendo point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_nintendo_point
      @my_nintendo_point = MyNintendoPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_nintendo_point_params
      params.require(:my_nintendo_point).permit(:username, :country, :gpoints, :spoints, :user_id)
    end
end
