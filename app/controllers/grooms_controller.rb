class GroomsController < ApplicationController
  before_action :set_groom, only: %i[ show edit update destroy ]

  # GET /grooms or /grooms.json
  def index
    @grooms = Groom.all
  end

  # GET /grooms/1 or /grooms/1.json
  def show
  end

  # GET /grooms/new
  def new
    @groom = Groom.new
  end

  # GET /grooms/1/edit
  def edit
  end

  # POST /grooms or /grooms.json
  def create
    @groom = Groom.new(groom_params)

    respond_to do |format|
      if @groom.save
        format.html { redirect_to groom_url(@groom), notice: "Groom was successfully created." }
        format.json { render :show, status: :created, location: @groom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @groom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grooms/1 or /grooms/1.json
  def update
    respond_to do |format|
      if @groom.update(groom_params)
        format.html { redirect_to groom_url(@groom), notice: "Groom was successfully updated." }
        format.json { render :show, status: :ok, location: @groom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @groom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grooms/1 or /grooms/1.json
  def destroy
    @groom.destroy

    respond_to do |format|
      format.html { redirect_to grooms_url, notice: "Groom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groom
      @groom = Groom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def groom_params
      params.require(:groom).permit(:first_name, :last_name, :surname)
    end
end
