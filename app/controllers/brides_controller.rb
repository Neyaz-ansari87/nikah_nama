class BridesController < ApplicationController
  before_action :set_bride, only: %i[ show edit update destroy ]

  # GET /brides or /brides.json
  def index
    @brides = Bride.all
  end

  # GET /brides/1 or /brides/1.json
  def show
  end

  # GET /brides/new
  def new
    @bride = Bride.new
  end

  # GET /brides/1/edit
  def edit
  end

  # POST /brides or /brides.json
  def create
    @bride = Bride.new(bride_params)

    respond_to do |format|
      if @bride.save
        format.html { redirect_to bride_url(@bride), notice: "Bride was successfully created." }
        format.json { render :show, status: :created, location: @bride }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bride.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brides/1 or /brides/1.json
  def update
    respond_to do |format|
      if @bride.update(bride_params)
        format.html { redirect_to bride_url(@bride), notice: "Bride was successfully updated." }
        format.json { render :show, status: :ok, location: @bride }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bride.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brides/1 or /brides/1.json
  def destroy
    @bride.destroy

    respond_to do |format|
      format.html { redirect_to brides_url, notice: "Bride was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bride
      @bride = Bride.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bride_params
      params.require(:bride).permit(:first_name, :last_name, :surname)
    end
end
