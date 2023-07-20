class NikahEntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_nikah_entry, only: %i[ show edit update destroy ]

  # GET /nikah_entries or /nikah_entries.json
  def index
    @nikah_entries = current_user.nikah_entries.all
  end

  # GET /nikah_entries/1 or /nikah_entries/1.json
  def show
     respond_to do |format|
      format.html
      format.pdf do
        # Rails 6:
        render template: "nikah_entries/pdf_download.html.erb",
               pdf: "nikah_entry ID: #{@nikah_entry.id}"

      end
    end
  end

#   def pdf_download
#   respond_to do |format|
#     format.html
#     format.pdf do
#       # Fetch the nikah_entry for the current action, or provide the correct logic to retrieve the relevant record
#       @nikah_entry = NikahEntry.find(params[:id])
      
#       # Render the show.html.erb template as a PDF
#       render pdf: "nikah_entry_ID_#{@nikah_entry.id}",
#              template: "nikah_entries/show.html.erb",
#              layout: 'pdf_layout.html.erb' # Optional: specify a custom layout for the PDF if needed
#     end
#   end
# end



  # GET /nikah_entries/new
  def new
    @nikah_entry = current_user.nikah_entries.new
  end

  # GET /nikah_entries/1/edit
  def edit
  end

  # POST /nikah_entries or /nikah_entries.json
  def create
    @nikah_entry = current_user.nikah_entries.new(nikah_entry_params)

    respond_to do |format|
      if @nikah_entry.save
        format.html { redirect_to nikah_entry_url(@nikah_entry), notice: "Nikah entry was successfully created." }
        format.json { render :show, status: :created, location: @nikah_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nikah_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nikah_entries/1 or /nikah_entries/1.json
  def update
    respond_to do |format|
      if @nikah_entry.update(nikah_entry_params)
        format.html { redirect_to nikah_entry_url(@nikah_entry), notice: "Nikah entry was successfully updated." }
        format.json { render :show, status: :ok, location: @nikah_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nikah_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nikah_entries/1 or /nikah_entries/1.json
  def destroy
    @nikah_entry.destroy

    respond_to do |format|
      format.html { redirect_to nikah_entries_url, notice: "Nikah entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nikah_entry
      @nikah_entry = NikahEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nikah_entry_params
      params.require(:nikah_entry).permit(:nikah_date, :user_id, :nikah_address, :bride_name, :groom_name, :meahar_amount, :groom_parent_name, :bride_parent_name,nikah_signs_attributes: [:id, :sign_label,:sign_value,:sign_image, :_destroy])
    end
end
